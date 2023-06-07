FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip && add-apt-repository -y ppa:ansible/ansible && apt-get update && apt-get install -y ansible && ansible --version

