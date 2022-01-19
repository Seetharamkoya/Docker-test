FROM node:12

LABEL maintainer="seetharamkoya9@gmail.com"

#create myapp working directory
WORKDIR /home/myapp

#install app dependencies
COPY package.json package-lock.json ./
RUN npm install

#Copy app source code
COPY . .

#Expose port and start application
EXPOSE 3000
CMD [ "npm", "run","dev"]


