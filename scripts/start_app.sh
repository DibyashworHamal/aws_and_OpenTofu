#!/bin/bash
# Script for starting the app service
cd /home/ubuntu/app

nohup node index.js >> /home/ubuntu/app.log 2>&1 &