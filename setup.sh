#!/bin/bash

echo "Installing ansible"
sudo pacman -S --needed ansible-core

echo "Installing ansible dependencies"
ansible-galaxy install -r requirements.yml

echo "Running ansible playbook"
ansible-playbook startup.yml -K
