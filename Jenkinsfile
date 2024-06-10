    pipeline{
   agent {
        docker {
            image 'node:18' // Specify the Node.js version (replace with your desired version)
            args '-u root' // Run Docker container as root user if necessary
        }
    }       
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
