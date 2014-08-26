#!/bin/sh
rm -fr /tmp/jenkins-export
mkdir -p /tmp/jenkins-export
find /var/lib/jenkins/jobs -name "config.xml" | awk -F "/" '{ print "cp " $0 " /tmp/jenkins-export/" $(NF-1) ".xml" }' | sh
tar -czf jenkins-export.tar.gz -C /tmp/ jenkins-export
rm -fr /tmp/jenkins-export