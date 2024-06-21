# Use the Cypress Docker factory image with specified arguments
FROM cypress/browsers:node-18.16.1-chrome-114.0.5735.133-1-ff-114.0.2-edge-114.0.1823.51-1

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Set the entry point to run Cypress tests
ENTRYPOINT ["npx", "cypress", "run"]
