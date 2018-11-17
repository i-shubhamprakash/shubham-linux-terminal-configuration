#!/bin/bash

echo "Starting terminal setup..."

sleep 2

echo 
echo "STEP 1: Initialising git setup..."
echo 

sleep 2

read -p 'Enter your GitHub user name: ' userName

read -p 'Enter you Github Email Id: ' emailId

sleep 2
echo 
echo "Setting up git configuration..."

# sets up Git with your name
git config --global user.name "$userName"

# sets up Git with your email
git config --global user.email "$emailId"

# makes sure that Git output is colored
git config --global color.ui auto

sleep 2

echo 
echo "Git config setup complete... current setting:"

echo 
# displays new git configuration
git config --list

sleep 2

echo 
echo "STEP 2: Initialising terminal setting..."

sleep 2

echo 
echo "Copying new setting to .bashrc ..."

cp -r shubham-terminal-config ~/

mv ~/shubham-terminal-config ~/.shubham-terminal-config

cat to-bashrc.txt >> ~/.bashrc

sleep 2
echo 
echo "Terminal config complete..."

sleep 2
echo 
echo "STEP 3: Add new alias..."

sleep 2
echo 
echo "alias ll='ls -alt'" >>  ~/.bashrc
echo 
echo "Enter path to your local GitHub repository directory: "

read gitPath
echo 
echo "alias github='cd "$gitPath"' " >>  ~/.bashrc

sleep 2
echo 
echo 
echo "SETUP SUCCESSFULL..."
echo 

