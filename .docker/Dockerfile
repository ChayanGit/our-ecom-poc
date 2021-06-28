FROM node:12.16.3-alpine as build

WORKDIR /INFO-DIRECTORY



COPY . ./

CMD ["node", "src/index.js"]


FROM fholzer/nginx-brotli:v1.12.2


COPY ./nginx.conf /etc/nginx/nginx.conf

ENV PORT 8080
ENV HOST 0.0.0.0
EXPOSE 8080

COPY --from=build /INFO-DIRECTORY/build /usr/share/nginx/html


