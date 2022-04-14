# The image is built on top of one that has node preinstalled
FROM node:14
# Create app directory
WORKDIR /usr/src/app
# Copy all files into the container
COPY --chown=node:node package.json .
# Install dependencies
RUN npm install
# Copy all other files
COPY --chown=node:node . .
# Change user to node
USER node
# Open appropriate port 
EXPOSE 3000
# Start the application
CMD [ "node", "main.js" ]
