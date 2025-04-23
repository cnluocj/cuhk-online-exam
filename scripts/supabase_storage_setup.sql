-- Supabase Storage Setup Script
-- Creates the 'markdown-images' bucket and sets public anonymous access policies.

-- 1. Create the public bucket named "markdown-images"
-- Setting public = true enables access via the public URL structure if RLS allows.
-- ON CONFLICT DO NOTHING ensures the script is idempotent and won't fail if run again.
INSERT INTO storage.buckets (id, name, public)
VALUES ('markdown-images', 'markdown-images', true)
ON CONFLICT (id) DO NOTHING;

-- 2. Add RLS policies for anonymous access to objects in the "markdown-images" bucket.

-- Allow anonymous SELECT (read/download) access
CREATE POLICY "Allow public select access on markdown-images"
ON storage.objects FOR SELECT
TO anon
USING (bucket_id = 'markdown-images');

-- Allow anonymous INSERT (upload) access
-- WARNING: Anyone will be able to upload files to this bucket.
CREATE POLICY "Allow public insert access on markdown-images"
ON storage.objects FOR INSERT
TO anon
WITH CHECK (bucket_id = 'markdown-images');

-- Allow anonymous UPDATE (replace) access
-- WARNING: Anyone will be able to replace existing files in this bucket.
-- Often needed for overwrites, but consider if this is desired.
CREATE POLICY "Allow public update access on markdown-images"
ON storage.objects FOR UPDATE
TO anon
USING (bucket_id = 'markdown-images')
WITH CHECK (bucket_id = 'markdown-images');

-- Allow anonymous DELETE access - !!! VERY RISKY !!!
-- WARNING: Anyone will be able to delete any file in this bucket.
-- Uncomment ONLY if you fully understand the implications and accept the risk.
-- CREATE POLICY "Allow public delete access on markdown-images"
-- ON storage.objects FOR DELETE
-- TO anon
-- USING (bucket_id = 'markdown-images');


-- Note: You might need to enable RLS on the storage.objects table if it's not already enabled.
-- This is typically enabled by default in Supabase projects.
-- You can check/enable it in the Supabase Dashboard under Authentication -> Policies.

-- Also ensure that anonymous users (role 'anon') have USAGE permission on the 'storage' schema.
-- This is usually granted by default.
-- GRANT USAGE ON SCHEMA storage TO anon;
-- GRANT ALL ON ALL TABLES IN SCHEMA storage TO anon; -- Might be needed depending on default grants 