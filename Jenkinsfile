pipeline {
    agent any
    
    stages {
        stage('Creating dir and Dockerfile') {
            steps {
                sh '''
                mkdir /home/kaka/Ansible/
                touch /home/kaka/Ansible/Dockerfile
                '''
            }
        }
        stage('Configure Dockerfile') {
            steps {
                sh '''
                echo FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y gcc python-dev libkrb5-dev && \
  apt-get install python3-pip -y && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  apt install krb5-user -y && pip3 install pywinrm && pip3 install ansible > /home/kaka/Ansible/Dockerfile
                ''' 
            }
        }
        stage('Build image') {
            steps {
                sh '''
                docker build -t chikibevchik/Ansible:latest .
                '''
            }
        }
        stage('push image') {
            steps {
                sh '''
                docker push chikibevchik/Ansible:latest
                '''
            }
        }
        stage('delete image') {
            steps {
                sh '''
                docker rmi --force chikibevchik/Ansible:latest
                '''
            }
        }
        stage('pull image') {
            steps {
                sh '''
                docker pull chikibevchik/Ansible:latest
                '''
            }
        }
        stage('run containter') {
            steps {
                sh '''
                docker run chikibevchik/Ansible:latest
                '''
            }
        }
    }
}
