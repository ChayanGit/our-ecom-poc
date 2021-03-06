
 FROM node:15.4 as reactapp
 WORKDIR /app
 COPY . /app
 RUN yarn install --production
 RUN yarn build
 


FROM nginx

ENV PORT = 80
#hello
COPY nginx.conf /etc/nginx/conf.d/configfile.template
COPY --from=reactapp /app/build /usr/share/nginx/html