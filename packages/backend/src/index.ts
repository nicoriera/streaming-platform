// Backend entry point - Configuration example
import { createTRPCContext, appRouter } from './router';
import type { AppRouter } from './router';

// Example Bun server setup
const server = Bun.serve({
  port: 3001,
  async fetch(req) {
    // tRPC handler will be implemented here
    return new Response('Backend server running', {
      headers: { 'Content-Type': 'text/plain' },
    });
  },
});

console.log(`Backend server running on http://localhost:${server.port}`);

export type { AppRouter };
