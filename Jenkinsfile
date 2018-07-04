pipeline {
    agent { docker { 
            image 'ruby' 
            args '-p 3000:3000'
         }
        }
    stages {
        stage('build') {
            steps {
                sh 'bundler install'
                sh 'rails s'
            }
        }
    }
}