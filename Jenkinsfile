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
                sh 'ls'
            }
        }

        stage('azure login'){
            steps{
                sh 'az login --service-principal -u e8b7d642-91b1-4554-b0b6-bf878b5045a3 -p 2H.tTereYBSIn.vbNEViTOkQImY1x_Jx3o -t 1d790f78-cb86-4b48-89fc-3d03182efbe9'
            }
        }

        stage('terraform init'){
            steps{
                sh 'pwd'
                sh 'ls'
                dir('azure'){
                sh 'pwd'
                }
                sh 'ls -al; sudo /usr/bin/terraform init'
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
