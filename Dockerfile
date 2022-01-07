# dockerfile, "blueprint" for Docker to create images, all information necessary to build containers

# we are using node
FROM node

# where is this dir?
WORKDIR /usr/src/app

# package.json used to configure node project and dependencies
COPY package*.json ./

# npm install installs dependencies
RUN npm install

# copy everything for some reason
COPY . .

# open up port 4000 for project to use
EXPOSE 4000

# run npm start
CMD ["npm", "start"]