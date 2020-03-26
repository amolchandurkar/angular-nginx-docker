##### Stage 1
FROM node:latest as node
LABEL author="Amol Chandurkar"
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build -- --prod

##### Stage 2
FROM nginx:alpine
VOLUME /var/cache/nginx
COPY --from=node /app/dist /usr/share/nginx/html
COPY ./config/angular-nginx.conf /etc/nginx/conf.d/default.conf

# docker build -t angular-nginx -f angular-nginx.prod.dockerfile .
# docker run -p 8080:80 angular-nginx