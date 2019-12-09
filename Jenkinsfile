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
                sh 'xcodebuild -list -project "BullsEye/BullsEye.xcodeproj"'
            }
        }
    }
}
