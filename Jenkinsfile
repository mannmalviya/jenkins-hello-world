  pipeline {
      agent any
      stages {
          stage('Deploy - Staging') {
              steps {
                  echo 'Deploying to staging'
                  echo 'Running smoke tests'
              }
          }
          stage('Sanity check') {
              steps {
                  input "Does the staging environment look ok?"
              }
          }
          stage('Deploy - Production') {
              steps {
                  echo 'Deploying to production'
              }
          }
      }
  }
