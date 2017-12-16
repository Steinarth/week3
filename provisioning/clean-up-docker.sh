#!/bin/bash

#Count how many containers we have
counter=$(docker ps -qa | wc -w)

#if we have more than 0 containers we can stop them and then delete
if [ $counter -gt 0 ];
then 
    echo "cleaning ** removing docker containers..."
    docker stop $(docker ps -a -q)
    docker container prune -f
else
    echo "No remove-able containers .. "
fi

#count how many images we have
counter1=$(docker images -qa | wc -w)

#if we have more than 0 images we can stop them and then delete
if [ $counter1 -gt 0 ]
then 
    echo "cleaning ** removing docker images..."
    docker rmi $(docker images -q)
else
    echo "No remove-able images .." 
fi

