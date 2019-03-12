SSH
===

Generate SSH key:

	$ ssh-keygen -t rsa -b 4096 -C "nazar@example.com"

Add public key to authorized keys on remote:

	cat id_rsa.pub | ssh user@remote.com 'cat >> .ssh/authorized_keys'
	
Fingerprint key:

    $ ssh-keygen -E md5 -lf id_rsa.pub
	
When editor doesn't work properly on ssh:

    $ export TERM=xterm
	
Proxying SSH using corkscrew:

	$ ssh -i example.com -o "ProxyCommand /usr/local/bin/corkscrew proxy.example.com 8080 %h %p"
	
Forward autentication agent:

	$ ssh -A user@remote
	
SSH config with jump host and agent forwarding:

    Host bastion
       User nazar
       HostName bastion.example.com
       ForwardAgent yes
    Host server
       User nazar
       HostName server.example.com
       ProxyJump bastion
       ForwardAgent yes

