FROM node:12-alpine as builder

# set timezone as china/shanghai
RUN cp /usr/share/zoneinfo/PRC /etc/localtime

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/

# copy app source
COPY . /usr/src/app

RUN npm install

CMD ["node","/usr/src/app/main.js"]