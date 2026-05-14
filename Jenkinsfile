pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage("Checkout") {
            steps {
                checkout scm
            }
        }        
        stage('Fetch and Pull') {
          steps {
            script {
               // Fetch changes
               sh 'git fetch --all'
               // Pull changes
               sh 'git pull origin develop'
                // show current folder and contents
                sh 'pwd && ls -l'
            }
          }
        }
        stage("Docker Build") {
            steps {
              sh '''
                  #oc start-build --from-build=<build_name>
                  oc start-build simplebuild --from-dir=. -F
              '''
            }
        }
    }
}
