#!/bin/bash

# Create a new user named 'joe'
sudo useradd joe

# Create a new group named 'developer'
sudo groupadd developer

# Create a new group named 'front-end'
sudo groupadd front-end

# Set 'developer' as the primary group for user 'joe'
sudo usermod -g developer joe

# Add user 'joe' to the supplementary group 'front-end'
sudo usermod -aG front-end joe

# Update all installed packages to their latest versions
sudo yum update -y

# Install the Apache HTTP server (httpd)
sudo yum install httpd -y

# Start the Apache service
sudo systemctl start httpd

# Enable Apache to start automatically on boot
sudo systemctl enable httpd

# Create an HTML file with a simple message in the default web directory
echo "<h1>Terraform project</h1>" > /var/www/html/index.html
