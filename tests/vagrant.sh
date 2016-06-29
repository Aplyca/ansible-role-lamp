#!/bin/bash
# Test LAMP provisiones with Ansible

echo "Starting VM and provision with role"
vagrant destroy -f
vagrant up