FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip && apt-get -add-repository -y ppa:ansible/ansible && apt-get update && apt-get install -y ansible && ansible --version
