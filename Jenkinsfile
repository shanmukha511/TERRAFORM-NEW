pipeline{
    agent any
 
stages
    {
    stage('Git Checkout')
    {
         steps
        {
             checkout scm
        }
    }
     stage('terraform init') {
            steps {
                 sh "terraform init -input=false"
               
            }
        }
        
         stage('terraform plan') {
            steps {
		
                 withCredentials([azureServicePrincipal('AzureServicePrincipal')]) {
            sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
              echo "hi shanmukha $AZURE_SUBSCRIPTION_ID" 
               sh "terraform plan  -input=false "
            }
            }
        }
        stage('terraform apply') {
           steps {
               withCredentials([azureServicePrincipal('AzureServicePrincipal')]) {
               echo "hi shanmukha $AZURE_SUBSCRIPTION_ID" 
             sh "terraform apply -input=false -auto-approve "
            }
           }
        }
    
}
}
