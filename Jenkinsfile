node {
    checkout scm
    stage('Clean') {
        // Clean files from last build.
        sh 'git clean -dfxq'
    }
    stage('Setup') {
        // Prefer yarn over npm.
        sh 'yarn install'
        dir('client')
        {
            sh 'yarn install'
        }
    }
    stage('Test') {
        sh 'npm run startpostgres && sleep 10 && npm run migratedb:dev'
        sh 'npm run test:nowatch'
        sh 'cd client && npm run jenkins:test'
        sh 'npm run startserver & npm run jenkins:apitest && npm run jenkins:loadtest && sleep 5 && kill $!'
        junit '**/test-reports/*.xml'
    }
    stage('Deploy') {
    withCredentials([usernamePassword(credentialsId: 'cdf0c207-7446-4528-bb45-5d93e0df74c8', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USER')]) {
        sh 'docker login -u $DOCKER_USER -p $DOCKER_PASSWORD'
        sh './dockerbuild.sh'
        }
        dir('./provisioning')
        {
            sh "./provision-new-environment.sh"
        }
       // Cleans containers and images from docker
       sh 'cd provisioning && ./clean-up-docker.sh'
}
}
