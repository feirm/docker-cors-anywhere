FROM node:15-alpine

# Node environment variables
ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules

# Install app dependencies
RUN npm i -g cors-anywhere

# Copy source
COPY server.js .

# Start the server
CMD ["node", "server.js"]

# Expose port 8080
EXPOSE 8080