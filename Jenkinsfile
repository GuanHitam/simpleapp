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
        }        stage('Fetch and Pull') {
          steps {
            script {
               // Fetch changes
               sh 'git fetch --all'
               // Pull changes
               sh 'git pull origin master'
            }
          }
        }
        stage("Docker Build") {
            steps {
              sh '''
                  #oc start-build --from-build=<build_name>
                  oc start-build -F simpleapp --from-dir=/home/vagrant/simpleapp
              '''
            }
        }
    }
}
