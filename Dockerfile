# A node.js v8 box
FROM node:8

# Who(m) to blame if nothing works
MAINTAINER sobaripanji8@gmail.com
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
EXPOSE 4000
CMD npm start