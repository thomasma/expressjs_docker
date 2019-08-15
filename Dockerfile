FROM node

# copy the code over
COPY . /opt/appcode

# expose the port
EXPOSE 80

# these apply only during instance run
WORKDIR /opt/appcode
RUN npm install
CMD [ "node", "basicexpresshello.js" ]
