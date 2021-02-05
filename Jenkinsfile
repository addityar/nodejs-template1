pipeline {
  agent any
  stages {
    stage('clone repo') {
      steps {
        script {
			echo 'Using remote command over ssh'
			sh 'echo "Today is:" date'
			echo '*** Executing remote commands ***'
	 		sh '''#!/bin/bash
				date
				ssh -i /var/lib/jenkins/.ssh/hm-master.key ubuntu@dev-swarm1-01.honest.mining >> ENDSSH
			  git clone https://github.com/addityar/nodejs-template1.git
			  
        ENDSSH
'''
        }
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
