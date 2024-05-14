pipeline {
    agent any

    tools {
        nodejs 'node'
    }

    environment {
        SCANNER_HOME = tool 'sona-scanner'
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
                sh 'npm build'
            }
        }

        stage('sonarqube scanner') {
            steps {
                sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.url=http://localhost:8080/ -Dsonar.login=squ_948cb9ee8b4185cc60708620e7167c502d3acf23 \
                    -Dsonar.projectName=todo-react \
                    -Dsonar.sources=build \
                    -Dsonar.projectkey=todo-react'''
            }
        }

        stage('OWASP scan') {
            steps {
                dependencyCheck additionalArguments: '--scan ./build/', odcInstallation: 'DP'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }
    }
}