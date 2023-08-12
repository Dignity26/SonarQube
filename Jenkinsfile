pipeline {
    agent none
        tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }
    stages {
        stage('SCM') {
            agent {
                label 'node1'
            }
            steps {
                        // Your build steps for Node 1
                sh 'rm -rf /var/lib/jenkins/workspace/Sample-Project-1/'
                git branch: 'main', url: 'https://github.com/Dignity26/Industry-Grade-Project-I.git'
            }
        }
        stage('Clean and Compile') {
            agent {
                label 'node1'
            }
            steps {
                        // Your build steps for Node 2
                sh "mvn clean compile"
            }
        }
        stage('Test and Package') {
            agent {
                label 'node1'
            }
            steps {
                        // Your build steps for Node 2
                sh "mvn test package"
            }
        }
        stage('SonarQube Analysis') {
            agent {
                label 'node1'
            }
            steps {
                sh ''' mvn sonar:sonar -Dsonar.url=http://35.238.39.252:9000/ -Dsonar.login=squ_0ef90d8df6e2b6bf0697f8d138fcf0e788e19d21 -Dsonar.projectName=ABCtechnologies \
                Dsonar.java.binaries=. \
                Dsonar.projectKey=ABCtechnologies '''
            }
        }

            
    }
    
}
