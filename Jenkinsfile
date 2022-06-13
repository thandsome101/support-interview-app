pipeline {
    agent any
    tools { 
        maven 'M2'
    }
    options {
        timestamps()
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }    
        stage ('Build and test'){
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
