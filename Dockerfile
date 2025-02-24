# Stage 1: Build
FROM node:20-alpine AS builder
WORKDIR /app

# Install pnpm globally in the builder stage
RUN npm install -g pnpm@latest

# Copy package files and install dependencies
COPY package.json pnpm-lock.yaml* ./
RUN pnpm install

# Copy the rest of the source code and build the app
COPY . .
RUN pnpm build

# Stage 2: Run (Final Stage)
FROM node:20-alpine
WORKDIR /app

# Install pnpm globally in the runtime stage as well
RUN npm install -g pnpm@latest prisma@latest

# Copy built files and necessary directories from the builder stage
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json .
COPY --from=builder /app/prisma ./prisma

# Start your app in production mode
CMD ["pnpm", "start:prod"]

