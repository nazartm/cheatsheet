Ansible
=======

Ping all hosts in `/etc/ansible/hosts`:

	$ ansible all -m ping -c local
	
Ping all hosts in inventory file (named inventory):

	$ ansible -i inventory all -m ping -c local

Run an ad-hoc command

	$ ansible -i inventory all -a "/bin/echo hello" 


Installation
------------

Installing/Upgrading ansible using pip:

	$ sudo pip install --upgrade pip
	
When behind proxy:

	$ sudo -E pip install --upgrade pip --proxy proxy.example.com:8080