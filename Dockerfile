# Use a Node.js LTS (Long Term Support) image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /webapp

# Expose port 3000 for the application
EXPOSE 3000

# Copy the application code from the host to the container's working directory
COPY . /webapp

# Copy the package.json and yarn.lock files separately and install dependencies
COPY package.json yarn.lock /webapp/
RUN yarn install --frozen-lockfile

# Start the application when the container is launched
CMD ["yarn", "start"]
