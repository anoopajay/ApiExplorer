# Use the 10.15 LTS version of Node
FROM node:10
 
# Define the working directory
WORKDIR /usr/src
 
# Put all files in the current directory into the workdir of the image
COPY . .
 
# Install node dependencies
RUN npm install

# replace this with your application's default port
EXPOSE 8033
 
# The command the container will run
CMD ["npm", "run", "start"]