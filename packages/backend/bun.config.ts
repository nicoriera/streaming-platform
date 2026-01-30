import { defineConfig } from 'bun';

export default defineConfig({
  entrypoints: ['./src/index.ts'],
  outdir: './dist',
  target: 'bun',
  minify: {
    whitespace: true,
    syntax: true,
  },
  sourcemap: 'external',
  external: [
    // Ne pas bundler les dépendances natives
    '@prisma/client',
    'ioredis',
    'cassandra-driver',
  ],
  // Optimisations
  define: {
    'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV || 'development'),
  },
});
