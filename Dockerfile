# 1. Use an official Node.js runtime as the base image
FROM node:20-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy package.json files first (improves caching)
COPY package.json package-lock.json* ./

# 4. Install dependencies
RUN npm install --production

# 5. Copy the rest of the application code
COPY . .

# 6. Expose the port your app listens on
EXPOSE 3000

# 7. Start the Node.js app
CMD ["node", "src/index.js"]