    pipeline{
   agent {
        docker {
            image 'node:18' // Specify the Node.js version (replace with your desired version)
            args '-u root' // Run Docker container as root user if necessary
        }
    }        stages{
            stage("checkout"){
            steps{
                checkout scm
            }
        }
        stage("Test"){
            steps{
                sh 'sudo apt install npm'
                sh 'npm test'
            }
        }
        stage("Build"){
            steps{
                sh 'npm run build'
            }
        }
        }
    }
