pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // If you use "Pipeline script from SCM" this checkout is optional.
                checkout([$class: 'GitSCM',
                  branches: [[name: '*/main']],
                  userRemoteConfigs: [[url: 'https://github.com/harshitha127/CICD-Skill.git']]
                ])
            }
        }

        stage('Build') {
            steps {
                // run your build script; ensure build.sh is executable in repo or chmod here
                sh 'chmod +x build.sh || true'
                sh './build.sh'
            }
        }
    }

    post {
        always {
            echo "Build finished with status: ${currentBuild.currentResult}"
        }
    }
}
