Docker
======

Stop all running processes:

	$ docker stop $(docker ps -a -q)
	
Remove all stopped processes:

	$ docker rm $(docker ps -a -q)

Bash access:

	$ docker exec -i -t <instance-id> /bin/bash
	
Provide environment variables:

	$ docker run -p 8080:8080 -e RDS_ADDRESS=db.eu-west-1.rds.amazonaws.com --env-file env.list image:tag
  
`env.list` is a common properties file.
  
  
  
  