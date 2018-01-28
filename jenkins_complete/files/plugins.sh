#!/bin/bash

set -x
jenkins_home=/var/lib/jenkins

for plugin in $*
do 

sudo touch $jenkins_home/plugins/"$1".jpi
sudo java -jar $jenkins_home/jenkins-cli.jar  -s http://localhost:8080 install-plugin $1
shift
done
set +x
