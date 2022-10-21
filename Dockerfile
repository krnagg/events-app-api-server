FROM node:16-alpine
RUN node -v
RUN npm -v
#copy app
COPY . /app/
#set work dir
WORKDIR /app
#run
RUN npm install
CMD ["node", "./src/server.js"]

