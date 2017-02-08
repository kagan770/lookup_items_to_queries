#!/bin/sh
if ps -ef | grep -v grep | grep gs-rest-service-0.1.0.jar  ; then
        exit 0
else
        java -Xms3g -Xmx3g -XX:+UseG1GC -jar gs-rest-service-0.1.0.jar >> microservices.log &
        exit 0
fi
