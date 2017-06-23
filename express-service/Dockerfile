FROM node:6

MAINTAINER Saju Sasidharan "sajus@cybage.com"

# install system-wide deps for Git and node
RUN apt-get -yqq update
RUN apt-get -yqq install git
RUN apt-get -yqq install nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Clone the conf files into the docker container
RUN git clone https://github.com/amalroyt/NodeMomDemo.git /usr/src/app
RUN git pull
RUN npm install
RUN npm install cookie-parser
RUN npm install json2xls
EXPOSE 8081
CMD [ "npm", "start" ]
