#!/bin/bash
# Test LAMP provisiones with Ansible

echo "Starting VM and provision with role"
vagrant box update
vagrant destroy -f
vagrant up

echo "Running tests"
ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tests/playbooks.yml -u vagrant
