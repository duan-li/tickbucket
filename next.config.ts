import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  reactStrictMode: true,
  redirects: async () => [
    {
      source: "/logout",
      destination: "/auth/logout",
      permanent: true,
    },
  ],
};

export default nextConfig;
