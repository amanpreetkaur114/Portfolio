    pipeline{
   agent {
        docker {
            image 'node:18' // Specify the Node.js version (replace with your desired version)
            args '-u root' // Run Docker container as root user if necessary
        }
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

         stage('Build Image') {
            steps {
                sh 'docker build -t portfolio:1.0 .'
            }
        }
        stage("Docker Push"){
            steps{
 withCredentials([usernamePassword(credentialsId: "d62b7f47-5d31-42ee-94a6-2adb0b239772", passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
            // assumes Jib is configured to use the environment variables
            sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
            sh 'docker tag portfolio:1.0 saj099/portfolio:1.0'
            sh 'docker push saj099/portfolio:1.0'
            sh 'docker logout'
        }            }
        }
        }
    }
