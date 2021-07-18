pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/deepan4cloud/azure.git'
                sh 'pwd'
            }
        }

        stage('Terraform Init'){
            
            steps {
                    ansiColor('xterm') {
                    withCredentials([azureServicePrincipal(
                    credentialsId: 'Azure',
                    subscriptionIdVariable: 'ARM_SUBSCRIPTION_ID',
                    clientIdVariable: 'ARM_CLIENT_ID',
                    clientSecretVariable: 'ARM_CLIENT_SECRET',
                    tenantIdVariable: 'ARM_TENANT_ID'
                ), string(credentialsId: 'access_key', variable: 'ARM_ACCESS_KEY')]) {
                        
                        sh """
                                
                        echo "Initialising Terraform"
                        /usr/bin/terraform -chdir=azure/ init
                        """
                           }
                    }
             }
        }
        
        
        stage('terraform init'){
            steps{
                sh 'pwd'
                sh 'ls -al; sudo /usr/bin/terraform -chdir=azure/ init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./azure; sudo /usr/bin/terraform -chdir=azure/ plan'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
