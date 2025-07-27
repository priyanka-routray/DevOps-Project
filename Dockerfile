# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy dependencies
COPY package*.json ./
RUN npm install

# Copy source files
COPY . .

# Expose app port (e.g., 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
