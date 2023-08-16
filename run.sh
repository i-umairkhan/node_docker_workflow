#!/bin/bash
sudo docker run -d -p 3000:3000 --name node-app -v "$(pwd)":/app:ro -v /app/node_modules node-app-image