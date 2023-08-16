FROM node

# Setting working directory to /app in node container
WORKDIR /app

# Copying package.json to /app and installing packages
COPY package.json .
RUN npm install

# Copying source code files
COPY . .

# Setting port enviroment Variable
ENV PORT 3000

# Exposing port and starting app
EXPOSE $PORT
CMD ["npm" , "run", "dev"]