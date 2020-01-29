# Stage 1 - start
FROM node:8 as react-build
WORKDIR /app
COPY . ./

# Stage 2 - npm install & build
RUN npm install
RUN npm run build
# in case you have problems with proxies, you can simply set the proxy and concatenate a command
# RUN npm config set proxy http://username:password@host:port && npm install

# Stage 2 - the production environment
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=react-build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
