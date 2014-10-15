# Ansible Role: LAMP

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-lamp.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-lamp)

Ansible Role that installs an configure a LAMP server on Debian/RedHat.

## Requirements

Use hash behavior for variables in ansible.cfg, see: https://github.com/Aplyca/ansible-role-lamp/blob/master/tests/ansible.cfg

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-lamp/blob/master/defaults/main.yml

## Dependencies

Install dependencies using Ansible galaxy

   ansible-galaxy install -r dependencies.txt

## Test

Use Vagrant to test the role:

   cd tests
   vagrant box add ubuntu/trusty64
   vagrant up

You should see a LAMP server on http://localhost:8080

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)