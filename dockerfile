# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from server/
COPY server/package.json server/package-lock.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the server source code
COPY server/src ./src

# Expose port 5000 (or whatever port your app uses)
EXPOSE 5000

# Start the application
CMD ["node", "src/index.js"]
