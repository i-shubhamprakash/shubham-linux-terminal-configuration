#!/bin/bash

printf "\nStarting terminal setup...\n"

sleep 2

printf "\nSTEP 1: Initialising git setup...\n\n"

sleep 2

read -p 'Enter your GitHub user name: ' userName

read -p 'Enter you Github Email Id: ' emailId

printf "\n\nSetting up git configuration..."

# sets up Git with your name
git config --global user.name "$userName"

# sets up Git with your email
git config --global user.email "$emailId"

# makes sure that Git output is colored
git config --global color.ui auto

printf "\n\nGit config setup complete... current setting:\n\n"

# displays new git configuration
git config --list

sleep 2

printf "\n\nSTEP 2: Initialising terminal setting..."

printf "\n\nCopying new setting to .bashrc ..."

cp -r shubham-terminal-config ~/

mv ~/shubham-terminal-config ~/.shubham-terminal-config

cat to-bashrc.txt >> ~/.bashrc

sleep 2

printf "\n\nTerminal config complete..."

sleep 2

printf "\n\nSTEP 3: Add new alias..."

sleep 2

printf "\n\nalias ll='ls -alt'" >>  ~/.bashrc

printf "\n\nEnter path to your local GitHub repository directory: "

read gitPath

printf "\n\nalias github='cd "$gitPath"' " >>  ~/.bashrc

sleep 2
printf "\n\nSETUP SUCCESSFULL...\n\n"


