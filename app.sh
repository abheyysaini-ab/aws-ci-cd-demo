#!/bin/bash

APP_DIR="/home/ec2-user/aws-ci-cd-demo"

# If the app directory does not exist, clone it
if [ ! -d "$APP_DIR" ]; then
  echo "Cloning repo for the first time..."
  git clone https://github.com/abheyysaini-ab/aws-ci-cd-demo.git $APP_DIR
else
  echo "Repo already exists. Pulling latest changes..."
  cd $APP_DIR
  git pull origin main
fi

echo "✅ Deployed via GitHub Actions at $(date)" >> /home/ec2-user/deploy.log
