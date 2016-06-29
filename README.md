# Ansible Role: LAMP

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-lamp.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-lamp)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-lamp.png?style=badge)](https://circleci.com/gh/Aplyca/ansible-role-lamp)

Ansible Role that installs and configure LAMP Stack on Debian/Ubuntu.

## Requirements

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-lamp/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

## Installation

Using ansible galaxy:

```bash
ansible-galaxy install Aplyca.LAMP
```

You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:

```yaml
dependencies:
  - { role: Aplyca.LAMP }
```

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-lamp/blob/master/defaults/main.yml

## Dependencies

Install dependencies using Ansible galaxy

`ansible-galaxy install -r roles/requirements.yml`

## Testing

Use Vagrant to test the role:

```bash
tests/vagrant.sh
```

Use Docker to test the role:

```bash
tests/docker.sh
```

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
