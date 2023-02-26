# use a Node 18 base image
FROM node:18-slim

# set up working directory to /backend inside the container
WORKDIR /backend-app

# copy backend app files
COPY . ./backend/

# BUILD THE APP
# install dependencies
RUN npm ci

# build the backend app
RUN npm run build

# RUN THE APP
# set the env to development
ENV NODE_ENV development

# expose the port where the app will the running
EXPOSE 3000

# start the app
CMD [ "npx", "serve", "build"]