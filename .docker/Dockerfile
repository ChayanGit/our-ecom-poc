
 FROM node:15.4 as reactapp
 WORKDIR /app
 COPY . .
 RUN npm install
 #RUN yarn install --production


 FROM nginx

COPY container/etc/nginx /
COPY build /usr/share/nginx/html

 #CMD ["node", "src/index.js"]
 # build environment
# FROM node:14 as reactapp

# # Create app directory
# WORKDIR /src
# COPY package*.json /src/
# RUN npm install

# RUN npm build

# # If you are building your code for production
# # RUN npm ci --only=production


# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)

# COPY . .








# # server environment
# FROM fholzer/nginx-brotli:v1.12.2
# COPY nginx.conf /etc/nginx/conf.d/configfile.template

# #COPY --from=reactapp /src/build /usr/share/nginx/html

# ENV PORT 8080
# ENV HOST 0.0.0.0
# EXPOSE 8080
# CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"

#docker build -t gcr.io/our-ecom-app/locltest -f Dockerfile .

