pipeline {
    agent any 
    stages {
        stage('ready') {
            steps {
                sh 'echo "ready"'
            }  
        } 
        stage('Stage 1') {
            steps {
                sh 'xcodebuild -scheme "BullesEye" -project "BullsEye.xcodeproj"'
            }
        }
    }
}
