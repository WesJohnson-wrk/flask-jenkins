pipeline {
  agent {
    node {
      label 'docker'
    }

  }
  stages {
    stage('Git') {
      steps {
        git(url: 'https://github.com/WesJohnson-wrk/flask-jenkins', branch: 'main')
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t wesjohnsondoc/flask_app .'
      }
    }

    stage('Docker login') {
      steps {
        sh 'docker login -u wesjohnsondoc -p dckr_pat_-t5dQyMVNe7BLiT6aGxXRAW--2k'
      }
    }

    stage('Docker push') {
      steps {
        sh 'docker push wesjohnsondoc/flask_app'
      }
    }

    stage('') {
      steps {
        sh '''ssh -i "wpj_USER.pem" ubuntu@ec2-35-171-225-126.compute-1.amazonaws.com
sudo git clone https://github.com/WesJohnson-wrk/index_test.git
sudo cp -r index_test/* .
#sudo systemctl start apache2
ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)
sudo sed -i "s/_ID/$ID/" /var/www/html/index.html
AZ=$(curl http://169.254.169.254/latest/meta-data/placement/availability-zone)
sudo sed -i "s/_AZ/$AZ/" /var/www/html/index.html
'''
      }
    }

  }
}