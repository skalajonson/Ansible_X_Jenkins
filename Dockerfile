FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3 python3-pip software-properties-common && add-apt-repository -y ppa:ansible/ansible && apt-get update && apt-get install -y ansible && ansible --version

RUN echo [linux] ansible_host=192.168.1.16 >> /etc/ansible/hosts
