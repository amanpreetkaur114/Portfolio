    pipeline{
        agent any
         tools {
    nodejs 'NodeJS' // Replace 'NodeJS' with the name you gave in the tool configuration
  }
        stages{
            stage("checkout"){
            steps{
                checkout scm
            }
        }
        stage("Test"){
            steps{
        sh 'npm install'
            }
        }
        stage("Build"){
            steps{
                sh 'npm run build'
            }
        }
        }
    }
