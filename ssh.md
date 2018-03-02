SSH
===

Generate SSH key:

	$ ssh-keygen -t rsa -b 4096 -C "nazar@example.com"

Add public key to authorized keys on remote:

	cat id_rsa.pub | ssh user@remote.com 'cat >> .ssh/authorized_keys'	
	
When editor doesn't work properly on ssh:

    $ export TERM=xterm