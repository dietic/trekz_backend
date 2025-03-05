# Stage 1: Build
FROM node:20-alpine AS builder
WORKDIR /app

# Install Yarn globally in the builder stage
RUN npm install -g yarn

# Copy package files and install dependencies (using yarn.lock if available)
COPY package.json yarn.lock* ./
RUN yarn install

# Copy the rest of the source code and build the app
COPY . .
RUN yarn build

# Stage 2: Run (Final Stage)
FROM node:20-alpine
WORKDIR /app

# Install Yarn globally in the runtime stage as well (and prisma if needed)
RUN npm install -g yarn prisma@latest

# Copy built files and necessary directories from the builder stage
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json .
COPY --from=builder /app/prisma ./prisma

# Start your app in production mode
CMD ["yarn", "start:prod"]
