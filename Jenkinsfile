pipeline {
  agent any
  def remote = [:]
  remote.name = 'dev-swarm1-01'
  remote.host = 'dev-swarm1-01.honest.mining'
  remote.user = 'ubuntu'
  remote.identityFile = '/var/lib/jenkins/.ssh/hm-master.key'
  remote.allowAnyHosts = true
  stages {
    stage('clone repo') {
      steps {
         sshCommand remote: remote, command: 'git clone https://github.com/addityar/nodejs-template1.git'
      }
    }

    stage('Build Image') {
      steps{
        sshCommand remote: remote, command: 'cd /home/ubuntu/nodejs-template1 && docker build -t nodejs-template .'
      }
    }

    stage('Run Container') {
      steps {
        sshCommand remote: remote, command: 'docker run -p 8100:8000 -d nodejs-template:latest'
      }
    }

  }
}
