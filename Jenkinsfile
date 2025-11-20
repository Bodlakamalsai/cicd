pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')   // Add your AWS access key in Jenkins credentials
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Clone Repo') {
             steps {
                 git url: 'https://github.com/Bodlakamalsai/cicd.git', credentialsId: 'github-token'
             }
         }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
	stage('Terraform Destroy') {
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }

    }
}

