# Specify Base / Existing Image to be able to run Node.js applications
# We will have Node.js and NPM installed
# :alpine is the version
FROM node:alpine

# Create a working directory inside of our container
# All of our application code will live in the working directory
WORKDIR /usr/src/app

# Copy package.json into working directory
COPY ./package.json .

# Install all dependencies for application inside container
RUN npm install

# Copy rest
COPY . .

# Expose :3000 inside the container
EXPOSE 3000

# Command to run our application
CMD ["npm", "run", "start"]