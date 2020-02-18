# Used nodeJS version 10 instead of node:latest kasi pag naupdate ung nodeJS sa bagong version baka masira ung application mo
FROM node:10

# Where our app will live in the container
WORKDIR /usr/src/app

# Move package.json and package-lock.json to our working directory in our container; may wildcard siya
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy files that are in the same location as the Dockerfile to the container
COPY . .

# In index.js, kelangan yung port 3000 for listening(?) siguro so kailangan naka-expose yung port
EXPOSE 3000

# In package.json, he made a npm script (sa loob ng 'scripts' field) called 'start' that runs the command "node index.js" automatically na
CMD ["npm","start"]



