FROM node:18-alpine

# Set working dir
WORKDIR /app

# Copy package files & install dependencies
COPY package*.json ./
RUN npm install

# Copy all source files
COPY . .

# Build Tailwind output.css
RUN npm run build:css

# Expose app on port 3000
EXPOSE 80

# Start the server
CMD ["npm", "start"]
