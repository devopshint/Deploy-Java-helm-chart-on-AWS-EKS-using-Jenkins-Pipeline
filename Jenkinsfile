pipeline {
  agent any
    
  stages {
    stage("Clone code from GitHub") {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'GITHUB_CREDENTIALS', url: 'https://github.com/kubade220/Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/']])
                }
            }
        }
      stage('mvn') {
      steps {
          sh 'mvn package'
      }
  }
  
     stage('Build Node JS Docker Image') {
            steps {
                script {
                  sh 'docker build -t kubade220/java-1.0 .'
                }
            }
        }


        stage('Deploy Docker Image to DockerHub') {
            steps {
                script {
                 withCredentials([string(credentialsId: 'kubade220', variable: 'kontynopol123')]) {
                    sh 'docker login -u kubade220 -p ${kontynopol123}'
            }
            sh 'docker push kubade220/java-1.0'
        }
            }   
        }
        
        
     stage('Deploying Node App helm chrt on eks') {
      steps {
        script {
          sh ('aws eks update-kubeconfig --name sample --region us-west-2a')
          sh "kubectl get ns"
          sh "helm install java ./java-chart"
        }
      }
    }

  }
}
