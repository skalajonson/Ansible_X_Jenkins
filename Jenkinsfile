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
