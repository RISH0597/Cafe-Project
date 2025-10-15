# Use an official Node.js LTS image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (adjust if not 3000)
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]