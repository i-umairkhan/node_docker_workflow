#!/bin/bash

# First removing any previous container + deleting volumes
sudo docker rm node-app -fv

# starting new container

# -d : detach mode
# --env-file : path to env file
# -p : exposing port on host
# --name : name for container
# -v : read only volume sync with container
# -v : to spacify not to override this directory

sudo docker run -d --env-file ./.env -p 3000:4000 --name node-app -v "$(pwd)":/app:ro -v /app/node_modules node-app-image