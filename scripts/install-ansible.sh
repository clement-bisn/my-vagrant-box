#!/usr/bin/env sh
pip install ansible --user
git config --global user.email "clement.julien.bisson@gmail.com"
git config --global user.name "clement-bisn"
git config --global core.sshCommand 'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
git clone https://github.com/clement-bisn/my-vagrant-box.git
/home/vagrant/.local/bin/ansible-playbook /home/vagrant/my-vagrant-box/provision.yml
