// Shared types
export interface User {
  id: string;
  username: string;
  email: string;
}

export interface Stream {
  id: string;
  title: string;
  broadcasterId: string;
  viewerCount: number;
  isLive: boolean;
}
