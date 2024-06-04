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
                sh "terraform init --backend-config=env/${params.ENVIRONMENT}/backend.conf"
            }
        }

        stage('Plan') {
            steps {
                sh "terraform plan --var-file=env/${params.ENVIRONMENT}/variables.tfvars"
            }
        }

        stage('Apply') {
            steps {
                sh "terraform apply --var-file=env/${params.ENVIRONMENT}/variables.tfvars --auto-approve"
            }
        }
    }
}