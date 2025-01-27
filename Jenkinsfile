pipeline {
    triggers {
  githubPush()
}

    agent{
        label 'slave-docker-python'
    }
    environment{
        dockerhub= credentials('dockerhub')
    }
    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '7', numToKeepStr: '2')
    }

    stages{
        stage('checkout stage'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/math198512/python-sample-app.git']])
            }
        }
        stage('docker build'){
            steps{
                sh 'docker -v'
                sh 'docker build -t thoraichi/python-project-pipeline-test .'
            }
        }
        stage('dockerPush'){
            steps{
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
                sh 'docker push thoraichi/python-project-pipeline-test:latest'
            }
        }
        stage('run'){
            steps{
                sh 'docker stop $(docker ps -a -q)'
                sh 'docker rm $(docker ps -a -q)'
                sh 'docker rmi -f $(docker images -aq)'
                sh 'docker run -p 80:5000  thoraichi/python-project-pipeline-test:latest'
            }
        }
    }
}