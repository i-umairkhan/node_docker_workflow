#!/bin/bash

# First removing any previous container 
sudo docker rm node-app -f

# starting new container

# -d : detach mode
# -p : exposing port on host
# --name : name for container
# -v : read only volume sync with container
# -v : to spacify not to override this directory

sudo docker run -d --env PORT=4000 -p 3000:4000 --name node-app -v "$(pwd)":/app:ro -v /app/node_modules    node-app-image