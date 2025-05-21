#!/bin/bash

cd terraform

echo "Applying Terraform..."
terraform init
terraform apply -auto-approve

echo "Waiting for instance to be ready..."
sleep 60

cd ../ansible

echo "Running Ansible playbook..."
ansible-playbook -i hosts.ini lemp.yml
