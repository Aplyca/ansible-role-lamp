#!/bin/bash
# Test AWS provisioned with Ansible

cd $(dirname "$0") && cd ..

echo "Install dependencies"
ansible-galaxy install -r roles/requirements.yml

echo "Checking syntax"
ansible-playbook -i inventories/local playbooks.yml --extra-vars="@tests/tests.yml" --connection=local --syntax-check

echo "Running role"
ansible-playbook -i inventories/local playbooks.yml --extra-vars="@tests/tests.yml" --connection=local

echo "Checking idempotence"
ansible-playbook -i inventories/local playbooks.yml --extra-vars="@tests/tests.yml" --connection=local | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)

echo "Removing downaloded Ansible Galaxy roles"
rm -Rf `ls -1 -d roles/*/`