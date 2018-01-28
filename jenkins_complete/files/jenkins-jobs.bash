#!/bin/bash


jenkins_home=/var/lib/jenkins

	for job in $*
	do

		if [ !-d "$jenkins_home"/jobs/"$1" ]
		then

			java -jar $jenkins_home/jenkins-cli.jar  -s http://localhost:8080/  create-job $1  <  /tmp/$1_config.xml

		else

			test = `diff -qr $jenkins_home/jobs/$1/config.xml  $1_config.xml`

			if [ $test != "" ]
			then
				java -jar $jenkins_home/jenkins-cli.jar  -s http://localhost:8080/  update-job $1  <  /tmp/$1_config.xml
			if

			echo "Sample job is already present.

		fi  

	done