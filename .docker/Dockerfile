
 FROM node:15.4 as reactapp
 WORKDIR /app
 COPY . .
 #RUN npm install
 RUN yarn install --production


FROM nginx

ENV PORT = 80

COPY .docker/nginx.conf /etc/nginx/conf.d/configfile.template
COPY build /usr/share/nginx/html