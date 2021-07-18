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
            }
        }

        stage('azure login'){
            steps{
                sh './set-env.sh
                sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
            }
        }

        stage('terraform init') {
            steps {
                sh 'sudo /usr/bin/terraform init ./azure'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./azure; sudo /home/ec2-user/terraform plan ./azure'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
