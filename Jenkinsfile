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
                sh 'sudo chmod -R 755 azure/*'
                sh './azure/set-env.sh'
                sh 'echo $AZURE_CLIENT_ID'
                sh 'echo $AZURE_CLIENT_SECRET'
                sh 'echo $AZURE_TENANT_ID'
                sh 'az login --service-principal -u e8b7d642-91b1-4554-b0b6-bf878b5045a3 -p 2H.tTereYBSIn.vbNEViTOkQImY1x_Jx3o -t 1d790f78-cb86-4b48-89fc-3d03182efbe9'
            }
        }

        stage('terraform init') {
            steps {
                sh 'sudo /usr/bin/terraform init ./azure'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./azure; sudo /usr/bin/terraform plan'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
