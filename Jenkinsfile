cat > Jenkinsfile <<'JENKINS'
pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // This 'git' step is optional when using "Pipeline script from SCM",
                // but harmless if you want to test pipeline in other contexts.
                git branch: 'main',
                    url: 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
    }

    post {
        always {
            echo 'Build completed!'
        }
    }
}
JENKINS
