#!/bin/bash
# Trivy Docker Image Security Scan
docker build -t devsecops-app .
trivy image --severity HIGH,CRITICAL devsecops-app