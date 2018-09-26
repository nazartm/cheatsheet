VirtualBox
==========

### Install Guest additions

Mount the guest addition iso and then run:

    $ sudo sh /media/cdrom/VBoxLinuxAdditions.run
    
### To get permission to access shared directories

Add your user to virtualbox group and log off/in:

    $ sudo adduser nazar vboxsf

### SSH from host to guest

Set up rule in virtual box settings using UI: Host port 3022, guest port 22, name ssh, other left blank.

Alternatively, using cli:

	$ VBoxManage modifyvm myserver --natpf1 "ssh,tcp,,3022,,22"

Install SSH:
	
	$ sudo apt-get install openssh-server

SSH:

	$ ssh -p 3022 user@127.0.0.1
	
	
	
