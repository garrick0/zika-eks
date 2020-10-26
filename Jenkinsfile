pipeline {

    environment {
        JAVA_TOOL_OPTIONS = "-Duser.home=/var/maven"
    }

    agent {
        docker {
            image "maven:3.6.3-jdk-8"
            label "docker"
            args "-v /tmp/maven:/var/maven/.m2 -e MAVEN_CONFIG=/var/maven/.m2"
        }
    }


    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'mvn clean install'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}