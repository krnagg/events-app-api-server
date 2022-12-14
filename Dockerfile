# Use Google base image for NodeJS
FROM node:16-alpine
RUN node -v
RUN npm -v
# Copy application code.
COPY . /app/
# Change the working directory in image
WORKDIR /app
# Install dependencies.
RUN npm install
# Start the Express app
CMD ["node", "./src/server.js"]
