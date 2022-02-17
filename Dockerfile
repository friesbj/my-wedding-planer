FROM node:12

# Create working dir
WORKDIR /app

# Copy package.json and bower files
COPY package*.json ./
COPY .bowerrc ./
COPY bower.json ./

# Install bower globally
RUN npm install --global bower

# Install npm dependencies
RUN npm install

# Install bower dependencies
RUN bower install

# Copy files and start server
COPY . .
CMD npm start
EXPOSE 3000