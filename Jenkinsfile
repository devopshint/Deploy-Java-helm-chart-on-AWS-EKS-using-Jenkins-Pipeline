pipeline {
  agent any
    
  stages {
    stage("Clone code from GitHub") {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'GITHUB_CREDENTIALS', url: 'https://github.com/devopshint/Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/']])
                }
            }
        }
     
  
     stage('Build Node JS Docker Image') {
            steps {
                script {
                  sh 'docker build -t devopshint/java-1.0 .'
                }
            }
        }


        stage('Deploy Docker Image to DockerHub') {
            steps {
                script {
                 withCredentials([string(credentialsId: 'devopshint', variable: 'devopshint')]) {
                    sh 'docker login -u devopshint -p ${devopshint}'
            }
            sh 'docker push devopshint/java-1.0'
        }
            }   
        }
         
     stage('Deploying Node App helm chrt on eks') {
      steps {
        script {
          sh ('aws eks update-kubeconfig --name sample --region ap-south-1')
          sh "kubectl get ns"
          sh "helm install java ./java-chart"
        }
      }
    }

  }
}
