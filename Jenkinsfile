pipeline {
    agent any

    tools {
        nodejs 'node'
    }
    
    environment {     
        DOCKERHUB_CREDENTIALS= credentials('dockerhub')     
    }

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/imdoneman/todo-react-pipeline.git'
            }
        }

        stage('node package install') {
            steps {
                sh 'npm install'
            }
        }

        stage('project build') {
            steps {
                sh 'npm run build'
            }
        }

        // taking so much, have to skip for now
        // stage('OWASP scan') {
        //     steps {
        //         dependencyCheck additionalArguments: '--scan ./build/', odcInstallation: 'DP'
        //         dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
        //     }
        // }

        stage('docker build & push') {
            steps {
                sh 'docker build -t dockeriamdoneman/todo-react:latest .'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push dockeriamdoneman/todo-react:latest'
            }
        }
    }
}