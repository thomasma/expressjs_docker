#FROM ubuntu
FROM hypriot/rpi-node:latest

# housekeeping...install latest updates
#RUN apt-get update

# install nodejs
#RUN apt-get -y install nodejs
#RUN apt-get -y install npm

# copy the code over
COPY . /opt/appcode

# expose the port
EXPOSE 3000

# these apply only during instance run
WORKDIR /opt/appcode
RUN npm install
CMD [ "node", "basicexpresshello.js" ]
