# 1. Base image
FROM node:20-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy package files
COPY backend/package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy source code
COPY backend .

# 6. Expose port
EXPOSE 3000

# 7. Run NestJS directly in dev mode
CMD ["npm", "run", "start:dev"]
