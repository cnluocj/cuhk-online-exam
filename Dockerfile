# Stage 1: Build the application
FROM node:20-alpine AS builder

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --frozen-lockfile

# Copy application code
COPY . .

# Set build-time environment variables (needed for NEXT_PUBLIC_*) 
# These should be passed during the 'docker compose build' step via build args
ARG NEXT_PUBLIC_SUPABASE_URL
ARG NEXT_PUBLIC_SUPABASE_ANON_KEY
ENV NEXT_PUBLIC_SUPABASE_URL=$NEXT_PUBLIC_SUPABASE_URL
ENV NEXT_PUBLIC_SUPABASE_ANON_KEY=$NEXT_PUBLIC_SUPABASE_ANON_KEY

# Build the Next.js application
# Ensure next.config.js has output: 'standalone'
RUN npm run build

# Prune development dependencies (optional, reduces final image size slightly if not using standalone)
# RUN npm prune --production 

# Stage 2: Production image
FROM node:20-alpine AS runner

WORKDIR /app

# Set environment variables required at runtime
ENV NODE_ENV=production
# Add other runtime variables if needed (they will be passed from .env via docker-compose)
# ENV DIFY_API_URL=...
# ENV DIFY_API_KEY=...
# ENV SUPABASE_SERVICE_ROLE_KEY=...

# Create a non-root user
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

# Copy necessary files from the builder stage (for standalone output)
COPY --from=builder --chown=nextjs:nodejs /app/public ./public
COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /app/.next/static ./.next/static

# Switch to the non-root user
USER nextjs

# Expose the port the app runs on (default 3000 for Next.js)
EXPOSE 3000

# Define the command to run the application
CMD ["node", "server.js"] 