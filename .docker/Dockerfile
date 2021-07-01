
 FROM node:15.4 as reactapp
 WORKDIR /app
 COPY . .
 RUN npm install
 EXPOSE 8080
 ENV PORT 8080
 ENV HOST 0.0.0.0
 #RUN yarn install --production

# Choose NGINX as our base Docker image
FROM nginx:alpine

# Copy our nginx configuration
COPY container/etc/nginx/nginx.conf /etc/nginx/conf.d/configfile.template

# Set working directory to nginx asset directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf *

# Copy static assets from builder stage
COPY --from=reactapp /app/build .

# Define environment variables for Cloud Run
ENV PORT '\$PORT'
ENV HOST 0.0.0.0
EXPOSE 8080

CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"