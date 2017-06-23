FROM node:6

MAINTAINER Saju Sasidharan "sajus@cybage.com"

# install system-wide deps for Git and node
RUN apt-get -yqq update
RUN apt-get -yqq install git
RUN apt-get -yqq install nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Create app directory
RUN mkdir -p /usr/src/webapp
WORKDIR /usr/src/webapp

# Clone the conf files into the docker container
RUN git clone https://github.com/amalroyt/Angular2MomDemo.git /usr/src/webapp
RUN git pull
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]
