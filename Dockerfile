FROM node:18.0-alpine
WORKDIR /app
COPY . .
ENV NODE_OPTIONS=--openssl-legacy-provider
EXPOSE 3000
RUN npm install --legacy-peer-deps
CMD ["npm", "start"]