pipeline{
    agent any
    stages
    {
    stage('test')
    {
        steps{
            //git branch: 'master',
              //  credentialsId: 'Token',
                //url: 'https://github.com/shanmukha511/Terraform.git'
 checkout scm
            
            //withCredentials([azureServicePrincipal('AzureServicePrinicpal')]) {
            sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
              // echo "$AZURE_SUBSCRIPTION_ID"  
               
              // echo "My secret is  $AZURE_CLIENT_ID"
              sh "terraform init -input=false"
                //sh "terraform plan "
            
            //echo "$AZURE_SUBSCRIPTION_ID"
            //echo  "$AZURE_TENANT_ID"
            sh "terraform plan -out=tfplan -input=false"
                     
//}
        }
    }
}
}
