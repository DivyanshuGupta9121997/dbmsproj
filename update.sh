#!/bin/bash
echo "mysqldump -u root -p project"
mysqldump -u root -p project >  /media/dg/New\ Volume/flaskproj/project.sql
echo "Updating aws...."
scp -i ~/uk.pem -r /media/dg/New\ Volume/flaskproj/ ubuntu@ec2-34-208-110-47.us-west-2.compute.amazonaws.com:~/
