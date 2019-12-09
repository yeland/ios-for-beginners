pipeline {
    agent any 
    stages {
        stage('ready') {
            steps {
                sh 'echo "ready"'
            }  
        } 
        stage('build') {
            steps {
                sh 'xcodebuild -list -project "BullsEye/BullsEye.xcodeproj"'
            }
        }
    }
}
