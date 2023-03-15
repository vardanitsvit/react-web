podTemplate(containers: [
    containerTemplate(
        name: 'docker', 
        image: 'docker:latest', 
        command: 'sleep', 
        args: '30d'
        ),
    containerTemplate(
        name: 'kubectl', 
        image: 'bitnami/kubectl:latest', 
        command: 'sleep', 
        args: '30d')
  ]) {

    node(POD_LABEL) {
        stage('Get a docker project') {
            git 'https://github.com/vardanitsvit/react-web.git'
            container('docker') {
                stage('Build a Maven project') {
                    sh '''
                    docker build -t react-web .
                    '''
                }
            }
        }

        stage('Get a Python Project') {
          //git url: 'https://github.com/hashicorp/terraform.git', branch: 'main'
            container('kubectl') {
                stage('Build a Go project') {
                    sh '''
                    kubectl get pods 
                    '''
                }
            }
        }

    }
}
