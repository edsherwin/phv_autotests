pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout code from GitHub with the specified branch
                checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/edsherwin/phv_autotests.git']]])
            }
        }

        stage('Execute Tests') {
            steps {
                agent { label 'test-agent' } // Specify the agent named "test-agent"
                // Execute Robot Framework tests
                sh 'robot -x junit.xml --outputdir results --timestampoutputs tests && rebot --outputdir results --output output.xml --merge results/output-*.xml'
                // Trigger the Robot Framework tests Jenkins job
                // build(job: 'Robot-Tests-Job-Name', parameters: [[$class: 'StringParameterValue', name: 'PARAM_NAME', value: 'PARAM_VALUE']])
            }
        }
    }

    post {
        always {
            // Publish test results using Robot Publisher
            step([$class: 'RobotPublisher', disableArchiveOutput: false, logFileName: 'results/log.html', onlyCritical: true,
                otherFiles: 'results/*.png', outputFileName: 'results/output.xml', outputPath: '.', passThreshold: 90,
                reportFileName: 'results/report.html', unstableThreshold: 100])
        }
    }
}
