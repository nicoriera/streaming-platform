import { defineConfig } from 'vite';
import solid from 'vite-plugin-solid';
import federation from '@module-federation/vite';
import path from 'path';

export default defineConfig({
  plugins: [
    solid(),
    federation({
      name: 'streaming_frontend',
      filename: 'remoteEntry.js',
      exposes: {
        './StreamingModule': './src/modules/streaming/index.tsx',
        './ChatModule': './src/modules/chat/index.tsx',
        './ProfileModule': './src/modules/profile/index.tsx',
      },
      shared: {
        'solid-js': {
          singleton: true,
          requiredVersion: '^1.8.0',
        },
      },
    }),
  ],
  resolve: {
    alias: {
      '@frontend': path.resolve(__dirname, './src'),
      '@shared': path.resolve(__dirname, '../shared/src'),
      '@types': path.resolve(__dirname, '../types/src'),
      '@wasm': path.resolve(__dirname, '../wasm/pkg'),
    },
  },
  build: {
    target: 'esnext',
    minify: 'esbuild',
    sourcemap: true,
    rollupOptions: {
      output: {
        manualChunks: {
          'solid-vendor': ['solid-js', '@solidjs/router'],
          'trpc-vendor': ['@trpc/client'],
        },
      },
    },
  },
  server: {
    port: 3000,
    strictPort: true,
  },
  optimizeDeps: {
    include: ['solid-js', '@solidjs/router'],
  },
  // WebAssembly support
  assetsInclude: ['**/*.wasm'],
});
