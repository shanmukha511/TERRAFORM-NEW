#!groovy

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
            
           //withCredentials([azureServicePrincipal(credentialsId: 'AzureServicePrincipal',
//subscriptionIdVariable: 'AZURE_SUBSCRIPTION_ID',
//clientIdVariable: 'AZURE_CLIENT_ID',
//clientSecretVariable: 'AZURE_CLIENT_SECRET',
//tenantIdVariable: 'AZURE_TENANT_ID')])
            
            
           //withCredentials([azureServicePrincipal('AzureServicePrincipal')]) {
            sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
              echo "$AZURE_SUBSCRIPTION_ID"  
            
           sh 'export AZURE_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTION_ID'
sh 'export AZURE_CLIENT_ID=$AZURE_CLIENT_ID'
sh 'export AZURE_CLIENT_SECRET=$AZURE_CLIENT_SECRET'
sh 'export AZURE_TENANT_ID=$AZURE_TENANT_ID'
               
              echo "My secret is  $AZURE_CLIENT_ID"
              sh "terraform init -input=false"
                //sh "terraform plan "
            
            //echo "hi ${params.AZURE_SUBSCRIPTION_ID}"
            //echo  "bera ${params.AZURE_CLIENT_ID}"
            
            
            //sh "terraform plan -var subscription_id={params.AZURE_SUBSCRIPTION_ID} -var tenant_id={params.AZURE_TENANT_ID} -var client_id={params.AZURE_CLIENT_ID} -var client_secret={params.AZURE_CLIENT_SECRET}"
           
            sh "terraform plan  -var "subscription_id={AZURE_SUBSCRIPTION_ID}"  -var "tenant_id={AZURE_TENANT_ID}" -var "client_id=${AZURE_CLIENT_ID}" -var  client_secret=${AZURE_CLIENT_SECRET}"    "
            
           // sh "az login --service-principal -u $CLIENT_ID -p $CLIENT_SECRET -t $TENANT_ID" sh "az account set -s $SUBS_ID" sh "terraform init"
//}
        }
    }
}
}
