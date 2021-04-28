FROM node
RUN mkdir /usr/src/client
WORKDIR /usr/src/client
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]