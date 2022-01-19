FROM node:12

LABEL maintainer="seetharamkoya9@gmail.com"

#create myapp working directory
WORKDIR /home/myapp

#install app dependencies
COPY package.json package-lock.json ./
RUN npm install

#Copy app source code
COPY . .

ENV PORT 4000
#Expose port and start application
EXPOSE $PORT
CMD [ "npm", "run","dev"]


