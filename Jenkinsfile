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
                docker build -t chikibevchik/ansible:latest .
                '''
            }
        }
        stage('push image') {
            steps {
                sh '''
                docker push chikibevchik/ansible:latest
                '''
            }
        }
        stage('delete image') {
            steps {
                sh '''
                docker rmi --force chikibevchik/ansible:latest
                '''
            }
        }
        stage('pull image') {
            steps {
                sh '''
                docker pull chikibevchik/ansible:latest
                '''
            }
        }
        stage('run containter') {
            steps {
                sh '''
                docker run -it chikibevchik/ansible:latest
                '''
            }
        }
    }
}
