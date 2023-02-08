pipeline {
  agent {
    node {
      label 'docker'
    }

  }
  stages {
    stage('Git') {
      steps {
        git(url: 'https://github.com/WesJohnson-wrk/flasking', branch: 'main')
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t wesjohnsondoc/flask_app .'
      }
    }

    stage('Docker login') {
      steps {
        sh 'docker login -u wesjohnson -p dckr_pat_-t5dQyMVNe7BLiT6aGxXRAW--2k'
      }
    }

    stage('Docker push') {
      steps {
        sh 'docker push wesjohnsondoc/flask_app'
      }
    }

  }
}