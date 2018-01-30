#!/bin/bash


jenkins_home=/var/lib/jenkins

	for job in $*
	do

		if [ ! -d "${jenkins_home}/jobs/${i}" ]
		then

			java -jar ${jenkins_home}/jenkins-cli.jar  -s http://localhost:8080/  create-job ${i}  <  /tmp/${i}_config.xml

		else

			## test = `diff -qr ${jenkins_home}/jobs/${1}/config.xml  ${1}_config.xml`

        	## if [ "${test}" != "" ]
			## then
			## java -jar ${jenkins_home}/jenkins-cli.jar  -s http://localhost:8080/  update-job ${1}  <  /tmp/${1}_config.xml
			## if
			
				java -jar ${jenkins_home}/jenkins-cli.jar  -s http://localhost:8080/  update-job ${i}  <  /tmp/${i}_config.xml
			

			

		

	done
