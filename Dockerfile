FROM ubuntu:18.04

# Install Packages
RUN apt-get update && apt-get install -y \
    git \
    nodejs \
    npm \
    ssh \
    && rm -rf /var/lib/apt/lists/*

# Install gulp globaly
RUN npm install gulp -g \
    && npm cache clean
