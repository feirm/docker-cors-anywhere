FROM node:15-alpine

# Configure app directory
WORKDIR /usr/src/cors-anywhere

# Install app dependencies
COPY package*.json yarn.lock ./
RUN yarn install

# Copy source
COPY . .

# Expose port 8080
EXPOSE 8080

# Environment variables
ENV HOST=""
ENV PORT=""

# Start the server
CMD ["yarn", "start"]