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
    }
}