pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        // Declarative SCM checkout handled by job; optional explicit checkout:
        checkout scm
      }
    }

    stage('Build') {
      steps {
        script {
          if (isUnix()) {
            sh 'chmod +x build.sh || true'
            sh './build.sh'
          } else {
            // If you have a Windows equivalent, run it; or call bash if installed:
            // Option 1: run a .bat wrapper (recommended for Windows builds)
            // bat 'build.bat'

            // Option 2: if Git Bash or WSL is available on the node, call bash directly:
            // bat 'bash build.sh'

            // For now, fail with a helpful message:
            error('This build needs a Unix shell. Either run on a Linux agent, or provide a Windows build step (build.bat) or install bash on the node.')
          }
        }
      }
    }
  }

  post {
    always {
      echo "Build finished: ${currentBuild.currentResult}"
    }
  }
}
