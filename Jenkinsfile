pipeline {
    agent any

    tools {
        git 'Default'
    }

    environment {
        TERRAFORM_VERSION = 'v1.8.4'
    }

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'prod'], description: 'Choose the environment to deploy')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Initialize') {
            steps {
                dir("env/${params.ENVIRONMENT}")
                sh "terraform init --backend-config=backend.conf"
            }
        }
    }
}