node('jenkins-slave') {

    stage('unit-tests') {
        sh(script: """
            docker run --rm alpine /bin/sh -c "echo hello world"
            """)
    }

    stage('Checkout Source') {
      git branch: 'master', url: 'https://github.com/garrick0/zika-eks.git'
    }

    stage('Deploy App') {
      kubernetesDeploy(configs: "kubernetes/hello-world/nginx.yaml", kubeconfigId: "mykubeconfig")
    }


}