# Production Dockerfile for Node.js
FROM node:14 as build
WORKDIR /app
COPY . /app
RUN npm install

FROM nginx:alpine
EXPOSE 8000 3000
CMD node index1.js
