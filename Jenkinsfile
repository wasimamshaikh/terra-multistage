pipeline {
    agent any

    tools {
            git 'Default' // Specify the Git installation name
        }

    environment {
        // Define Terraform version to use
        TERRAFORM_VERSION = 'v1.8.4'
        }

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'prod'], description: 'Choose the environment to deploy')
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                checkout scm
            }
        }

        stage('Setup Terraform') {
                    steps {
                        // Install Terraform
                        sh '''
                        wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
                        unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
                        sudo mv terraform /usr/local/bin/
                        terraform --version
                        '''
             }
        }

        stage('Initialize') {
            steps {
                    sh "terraform init --backend-config=/env/${params.ENVIRONMENT}/backend.conf"
              }
        }
    }
}

   /*     stage('Plan') {
            steps {
                dir("env/${params.ENVIRONMENT}") {
                    sh 'terraform plan --var-file=variables.tfvars'
                }
            }
        }

        stage('Apply') {
            steps {
                dir("env/${params.ENVIRONMENT}") {
                    input message: "Approve the plan for ${params.ENVIRONMENT} environment?", ok: "Apply"
                    sh 'terraform apply --var-file=variables.tfvars --auto-approve'
                }
            }
        } */

