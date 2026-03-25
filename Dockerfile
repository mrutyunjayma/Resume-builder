#step 1: build react app
FROM node:18 AS build

WORKDIR /app

#copy only package
COPY package*.json ./

RUN npm install

COPY . .
RUN npm build

#step 2: server using nginx
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
