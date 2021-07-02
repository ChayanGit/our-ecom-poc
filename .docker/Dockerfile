
 FROM node:15.4 as reactapp
 WORKDIR /app
 COPY . .
 RUN npm install
 #RUN yarn install --production


 FROM nginx

COPY .docker/container /
COPY build /usr/share/nginx/html