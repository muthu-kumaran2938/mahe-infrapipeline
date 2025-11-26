pipeline {
    agent any

    environment {
        ENV = "${env.BRANCH_NAME}"
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }

    stages {

        stage('Checkout') {
            steps {
                git(
                    branch: "${env.BRANCH_NAME}",
                    credentialsId: 'git-credentials',
                    url: 'https://github.com/muthu-kumaran2938/mahe-infrapipeline.git'
                )
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
