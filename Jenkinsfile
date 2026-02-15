pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    docker.image('hashicorp/terraform:1.5').inside('--entrypoint=""') {
                        dir('terraform') {
                            sh 'terraform init'
                        }
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    docker.image('hashicorp/terraform:1.5').inside('--entrypoint=""') {
                        dir('terraform') {
                            sh 'terraform plan -out=tfplan'
                        }
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    docker.image('hashicorp/terraform:1.5').inside('--entrypoint=""') {
                        dir('terraform') {
                            sh 'terraform apply -auto-approve tfplan'
                        }
                    }
                }
            }
        }

        stage('Destroy (Manual Approval)') {
            steps {
                input message: 'Approve destroy?'
                script {
                    docker.image('hashicorp/terraform:1.5').inside('--entrypoint=""') {
                        dir('terraform') {
                            sh 'terraform destroy -auto-approve'
                        }
                    }
                }
            }
        }
    }
}
