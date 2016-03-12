[![Build Status](https://travis-ci.org/FGtatsuro/ansible-virtualbox.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-virtualbox)

ansible-virtualbox
====================================

Ansible role for VirtualBox.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian/Ubuntu
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

|name|description|default|
|---|---|---|
|virtualbox_apt_package|Apt package name of VirtualBox|virtualbox-5.0|
|virtualbox_apt_repository|Apt repository of VirtualBox|deb http://download.virtualbox.org/virtualbox/debian jessie contrib|

- These variables are valid only on Debian/Ubuntu, and they aren't used in OSX.
- On OSX, latest version is always used.

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.virtualbox }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run then on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

License
-------

MIT
