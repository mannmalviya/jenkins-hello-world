pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mkdir -p build/libs && echo "pretend app" > build/libs/app.jar'
            }
        }
        stage('Test') {
            steps {
                sh '''
mkdir -p build/reports
cat > build/reports/results.xml <<'EOF'
<testsuite name="demo" tests="2" failures="1">
  <testcase classname="demo.MathTest" name="testAdd"/>
  <testcase classname="demo.MathTest" name="testDivide">
    <failure message="expected 2 but got 3">boom</failure>
  </testcase>
</testsuite>
EOF
'''
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
            junit 'build/reports/**/*.xml'
        }
    }
}
