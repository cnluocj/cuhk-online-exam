"use client";

import { useEffect, useRef, useState } from 'react';

interface MathJaxContentProps {
  content: string;
  className?: string;
  id?: string; // Add an ID to distinguish different instances
}

export default function MathJaxContent({ content, className = "", id = "math-content" }: MathJaxContentProps) {
  const contentRef = useRef<HTMLDivElement>(null);
  const [renderError, setRenderError] = useState<string | null>(null);
  const [processedContent, setProcessedContent] = useState<string>("");
  const [isProcessed, setIsProcessed] = useState(false);
  const [renderCount, setRenderCount] = useState(0);

  // Helper function to preprocess LaTeX content
  const preprocessContent = (rawContent: string): string => {
    // Replace TikZ environment with a notice since MathJax doesn't support it
    let processed = rawContent.replace(
      /\\begin\{tikzpicture\}([\s\S]*?)\\end\{tikzpicture\}/g, 
      '<div class="bg-yellow-100 p-2 rounded text-sm">[TikZ diagram - not renderable in browser]</div>'
    );
    
    // Replace center environment which is not supported by default MathJax
    processed = processed.replace(
      /\\begin\{center\}([\s\S]*?)\\end\{center\}/g,
      '<div class="text-center">$1</div>'
    );
    
    // Replace resizebox which is not supported
    processed = processed.replace(
      /\\resizebox\{[^}]*\}\{[^}]*\}\{([\s\S]*?)\}/g,
      '$1'
    );
    
    return processed;
  };

  // Process content when it changes
  useEffect(() => {
    setProcessedContent(preprocessContent(content));
    setIsProcessed(true);
    // Force re-render after content changes
    setRenderCount(prev => prev + 1);
  }, [content]);

  // Render MathJax when processed content is ready
  useEffect(() => {
    // Reset error state
    setRenderError(null);
    
    if (isProcessed && contentRef.current) {
      // Use type assertion to avoid TypeScript errors
      const MathJax = (window as any).MathJax;

      if (MathJax) {
        try {
          if (typeof MathJax.typeset === 'function') {
            // MathJax v3
            // First clear any previous typesetting
            if (MathJax.typesetClear) {
              MathJax.typesetClear([contentRef.current]);
            }
            // Then typeset the content
            MathJax.typeset([contentRef.current]);
          } else if (MathJax.Hub && typeof MathJax.Hub.Queue === 'function') {
            // MathJax v2
            MathJax.Hub.Queue(['Typeset', MathJax.Hub, contentRef.current]);
          }
        } catch (e) {
          console.error('MathJax渲染错误:', e);
          setRenderError(e instanceof Error ? e.message : 'Error rendering LaTeX content');
        }
      }
    }
    
    // Add a fallback renderer that tries again after a short delay
    // This helps with cases where MathJax might not catch all elements on first pass
    const fallbackTimer = setTimeout(() => {
      const MathJax = (window as any).MathJax;
      if (MathJax && MathJax.typeset && contentRef.current) {
        try {
          MathJax.typeset([contentRef.current]);
        } catch (e) {
          // Silent catch - this is just a backup
        }
      }
    }, 500);
    
    return () => {
      clearTimeout(fallbackTimer);
    };
  }, [isProcessed, processedContent, renderCount]);

  return (
    <div className={`mathjax-wrapper ${className}`} data-math-id={id}>
      <div 
        ref={contentRef}
        dangerouslySetInnerHTML={{ __html: processedContent }} 
        className={`mathjax ${className}`}
      />
      
      {renderError && (
        <div className="mt-2 p-2 bg-red-100 text-red-700 rounded text-sm">
          <p className="font-semibold">渲染错误:</p>
          <p>{renderError}</p>
        </div>
      )}
    </div>
  );
} 