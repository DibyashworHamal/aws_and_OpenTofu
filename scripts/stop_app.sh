#!/bin/bash
# Script for stopping the service

pkill -f "node index.js" || true