Linux Random
============	
	
Memory usage:

    $ free -h
    $ ps -eo pmem,pcpu,vsize,pid,cmd | sort -k 1 -nr | head -5
	
Files by size:

	$ du -hs /data/* | sort -h
	
What route will be used in route table to get to an address:

    $ ip route get 10.85.131.138
	
Find and replace:

	$ find ./ -type f -exec sed -i -e 's/apple/orange/g' {} \;

Find and replace with a backreference:

    $ sed -E 's/\*([-A-ZÄÖÜÝŞŇÇŽa-zäöüýşňçž ]+)\*/\\emph{\1}/g'

Format json:

	$ echo '{"foo": "lorem", "bar": "ipsum"}' | python -mjson.tool
	$ echo '{"foo": "lorem", "bar": "ipsum"}' | jq
	
Check if host is reachable using netcat on given port:	
	
	$ nc -zv 192.0.0.5 22
	
Copy files to remote hosts:

	$ scp -r sourcedir/ user@dest.com:/dest/dir/
	
Sudo with current users environment variables:

    $ sudo -E <command>
    
## Systemctl

    $ systemctl list-unit-files --state=enabled
    
## View journal logs

    $ journalctl -u nginx.service --since today
    
## Loop through files to do something:

    $ for f in *.jpg; do echo "$f"; done

## Check which ports the server is listening on

    $ netstat -antup
    
## Execute as another user

    $ sudo -u admin whoami

## See ports a server is listening on

    $ ss -4ntpl
   
## Tracing 

    $ tcptraceroute my-site.com 443
    # equivalent to
    $ traceroute -T -O info -p 443  my-site.com
    
## Setting up user:

Create user with home directory

    $ useradd -m batman

Add user to group

    # usermod -a -G groupname username
    $ usermod -a -G sudo batman
	
Set the password for the user

    $ passwd username
