FROM node

# Setting working directory to /app in node container
WORKDIR /app

# Copying package.json to /app and installing packages
COPY package.json .
RUN npm install

# Copying source code files
COPY . .

# Exposing port 3000 and starting app
EXPOSE 3000
CMD ["node" , "index.js"]