FROM node:14-alpine AS builder
LABEL authors="vixogzlo"

RUN apk update
RUN apk add git 

WORKDIR /app
COPY package*.json ./
RUN npm install && npm install -g @angular/cli@latest

COPY src/ /app/src/
COPY *.json *.js /app/
RUN ng build

#CMD ng serve --host 0.0.0.0 --disable-host-check --poll 1
#EXPOSE 4200 49153

FROM nginx:stable-alpine
LABEL authors="vixogzlo"

COPY --from=builder /app/dist/* /usr/share/nginx/html
EXPOSE 80