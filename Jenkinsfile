pipeline {
    agent any 
    environment { 
        url = 'https://github.com/yuji-k64613/gradle.git'
    }   
    parameters {
        string(name: 'BRANCH', defaultValue: 'master', description: 'どのブランチ?')
    }
    stages {
        stage('Start') { 
            steps {
                sh 'echo 開始'
                echo "Hello ${params.BRANCH}"
                script {
                    if (env.JENKINS_HOME == 'false') {
                        //
                    }
                    print env.JENKINS_HOME
                }
            }
        }
        stage('Parallel Stage') {
            parallel {
                stage('ParallelA') { 
                    steps {
                        echo 'ParallelA Start'
                        sh 'sleep 5'
                        echo 'ParallelA End'
                    }
                }
                stage('ParallelB') { 
                    steps {
                        echo 'ParallelB Start'
                        sh 'sleep 3'
                        echo 'ParallelB End'
                    }
                }
            }
        }
        stage('Git') { 
            when {
                environment name: 'BRANCH', value: 'master'
            }
            when {
                expression { return params.BRANCH == 'master' } 
            }
            steps {
                echo 'git'
                git url: url, branch: 'master'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
    }    
}
