#!/bin/bash

NAME1=centos7
NAME2=ubuntu

IMAGE1=pycontribs/centos:7
IMAGE2=pycontribs/ubuntu:latest

docker run --rm -dit --name $NAME1 $IMAGE1
docker run --rm -dit --name $NAME2 $IMAGE2

ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass

docker stop $NAME1 $NAME2

