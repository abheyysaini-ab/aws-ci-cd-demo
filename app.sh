#!/bin/bash
echo "✅ Deployed via GitHub Actions at $(date)" | sudo tee -a /home/ec2-user/deploy.log
