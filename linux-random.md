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
	
Format json:

	$ echo '{"foo": "lorem", "bar": "ipsum"}' | python -mjson.tool
	$ echo '{"foo": "lorem", "bar": "ipsum"}' | jq
	
Check if host is reachable using netcat on given port:	
	
	$ nc -zv 192.0.0.5 22
	
Copy files to remote hosts:

	$ scp -r sourcedir/ user@dest.com:/dest/dir/
	
Sudo with current users environment variables:

    $ sudo -E <command>
