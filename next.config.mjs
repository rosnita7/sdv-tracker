/** @type {import('next').NextConfig} */
const nextConfig = {
    images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'stardewvalleywiki.com',
        port: '',
        pathname: '/**',},
    ],
  },
};


export default nextConfig;
