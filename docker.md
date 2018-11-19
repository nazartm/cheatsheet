Docker
======

Stop all running processes:

	$ docker stop $(docker ps -a -q)
	
Remove all stopped processes:

	$ docker rm $(docker ps -a -q)

Remove dangling, untagged images:

	$ docker rmi $(docker images -f "dangling=true" -q)

Bash access:

	$ docker exec -i -t <instance-id> /bin/bash
	
Provide environment variables:

	$ docker run -p 8080:8080 -e RDS_ADDRESS=db.eu-west-1.rds.amazonaws.com --env-file env.list image:tag
  
`env.list` is a common properties file.
  
Mount current directory as volume and set it as working directory inside docker

    $ docker run -it --name my-maven-project -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install
  
  
