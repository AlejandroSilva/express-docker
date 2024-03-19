FROM node:16-alpine

# Create app directory + install deps
WORKDIR /app
COPY package*.json ./
RUN npm install

# Bundle app
COPY . .

# Define port and command
EXPOSE 3000
CMD [ "node", "index.js" ]
