pipeline {
    agent any

    environment {
        AWS_REGION = 'ap-south-1'
    }
        // hello world
    stages {

        stage('Terraform Init') {
            steps {
                withAWS(credentials: 'aws-creds', region: "${AWS_REGION}") {
                    sh 'terraform init -input=false -upgrade'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                withAWS(credentials: 'aws-creds', region: "${AWS_REGION}") {
                    sh 'terraform plan -input=false -out=tfplan -var-file="terraform.tfvars"'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withAWS(credentials: 'aws-creds', region: "${AWS_REGION}") {
                    sh 'terraform apply -input=false -auto-approve tfplan'
                }
            }
        }

        stage('Destroy Approval') {
            steps {
                input message: "Do you want to destroy the infrastructure?"
            }
        }

        stage('Terraform Destroy') {
            steps {
                withAWS(credentials: 'aws-creds', region: "${AWS_REGION}") {
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline completed"
        }
        failure {
            echo "❌ Pipeline failed"
        }
    }
}
