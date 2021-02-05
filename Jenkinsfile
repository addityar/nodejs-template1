pipeline {
  agent any
  stages {
    stage('clone repo') {
      steps {
        git 'https://github.com/addityar/nodejs-template1.git'
         sh 'git reset'
         sh 'git clean -f'
         sh "git checkout master"
         sh "git pull origin master"
      }
    }

    stage('Build Image') {
      steps{
        sh 'docker build -t nodejs-template .'
      }
    }

    stage('Run Container') {
      steps {
        sh 'docker run -p 8100:8000 -d nodejs-template:latest'
      }
    }

  }
}
