    pipeline{
        agent any
        stages{
            stage("checkout"){
            steps{
                checkout scm
            }
        }
        stage("Test"){
            steps{
        sh 'sudo yum install npm'
            }
        }
        stage("Build"){
            steps{
                sh 'npm run build'
            }
        }
        }
    }
