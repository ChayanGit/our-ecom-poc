
 FROM node:15.4 as reactapp
 WORKDIR /app
 ENV PORT 8080
 COPY package.json /app/package.json
 RUN npm install

COPY . /app
 
CMD [ "node","src/index.js" ]
 

