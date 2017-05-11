env.DOKERHUB_USERNAME = 'andgandolfi'

pipeline {
  stages {
    stage('build') {
      sh 'docker build -t ${DOCKERHUB_USERNAME}/webapp:${BUILD_NUMBER} .'
    }
    stage('publish') {
      withDockerRegistry([credentialsId: 'DockerHub']) {
        sh 'docker push ${DOCKERHUB_USERNAME}/webapp:${BUILD_NUMBER}'
      }
    }
  }
}
