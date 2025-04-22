# CUHK Online Exam Platform - Docker Deployment

This document describes how to deploy the CUHK Online Exam Platform using Docker and Docker Compose.

## Prerequisites

*   [Docker](https://docs.docker.com/get-docker/)
*   [Docker Compose](https://docs.docker.com/compose/install/)

## Files

*   `Dockerfile`: Defines the steps to build the Next.js application container image.
*   `docker-compose.yml`: Defines the application service and its configuration.
*   `.env.template`: Template for required environment variables.
*   `.env`: (You need to create this) Contains the actual environment variable values.

## Setup

1.  **Clone the repository** (if you haven't already).
2.  **Configure Environment Variables**:
    *   Copy the template file: `cp .env.template .env`
    *   Edit the newly created `.env` file and fill in your actual Supabase and Dify credentials, and any other required variables.
        *   `APP_PORT`: The port on your host machine where the application will be accessible (e.g., 3000).
        *   `NEXT_PUBLIC_SUPABASE_URL`: Your Supabase project URL.
        *   `NEXT_PUBLIC_SUPABASE_ANON_KEY`: Your Supabase project public anon key.
        *   `SUPABASE_SERVICE_ROLE_KEY`: (If used) Your Supabase service role key (keep this secret!).
        *   `DIFY_API_URL`: The base URL for your Dify instance API.
        *   `DIFY_API_KEY`: Your Dify API key.
3.  **Ensure Standalone Output**: Make sure your `next.config.js` includes the `output: 'standalone'` option for optimal Docker builds:
    ```javascript
    // next.config.js
    /** @type {import('next').NextConfig} */
    const nextConfig = {
      // ... other configurations
      output: 'standalone',
    };

    module.exports = nextConfig;
    ```

## Running the Application

1.  **Build and Start**: Open a terminal in the `cuhk-online-exam` directory and run:
    ```bash
    docker compose up --build -d
    ```
    *   `--build`: Forces Docker Compose to rebuild the image if the `Dockerfile` or source code has changed.
    *   `-d`: Runs the containers in detached mode (in the background).

2.  **Access**: Once the build is complete and the container starts, you should be able to access the application in your browser at `http://localhost:<APP_PORT>` (replace `<APP_PORT>` with the value you set in your `.env` file, e.g., `http://localhost:3000`).

## Stopping the Application

To stop the running containers, navigate to the `cuhk-online-exam` directory in your terminal and run:

```bash
docker compose down
```

This will stop and remove the containers defined in the `docker-compose.yml` file.

## Important Notes

*   **`.gitignore`**: The `.env` file contains sensitive credentials and should **never** be committed to version control (like Git). Ensure your `.gitignore` file includes an entry for `.env`.
*   **Production**: This setup provides a basic deployment. For a production environment, consider adding:
    *   A reverse proxy (like Nginx or Traefik) to handle HTTPS termination, security headers, and potentially load balancing.
    *   More robust logging.
    *   Proper volume management if needed.

This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.
