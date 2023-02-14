pipeline {
  agent {
    node {
      label 'docker'
    }

  }
  stages {
    stage('Git') {
      parallel {
        stage('Git') {
          steps {
            git(url: 'https://github.com/WesJohnson-wrk/flask-jenkins', branch: 'main')
          }
        }
      }
    }

    stage('Build Image') {
      steps {
        sh 'docker image build -t flask-jenkins:latests .'
      }
    }

    stage('Docker login') {
      steps {
        sh 'docker login -u wesjohnsondoc -p dckr_pat_-t5dQyMVNe7BLiT6aGxXRAW--2k'
      }
    }

    stage('Docker push') {
      steps {
        sh 'docker push wesjohnsondoc/flask-jenkins'
      }
    }

  }
}
