#### AZ CLI query resources

#### Azure CLI/PowerShell commands

//LOGIN & SUBSCRIPTION
//to login using service principal
az login --service-principal -u {appid} -p {password} --tenant {tenant}

az account list

az account list --query "[?isDefault]"

//to get current logged in Azure account details
az account show

# to get a particular property from the AZ command output
az account show --query id --output tsv

//to get default setting
az config get

//to set default setting
az config set defaults.location=eastus defaults.group=MyResourceGroup

//to set default subscription 
az account set --subscription "xxxxxx-xxxx-xxxxx-xxxx-xxxxxxx"


//RESOURCE GROPUS

//to create a resource group
az group create --name demoResourceGroup --location westus

//to delete a resource group
az group delete --name api-management-rg

//to list all resource groups
az group list

az group list --query "[?name]".name --output tsv

//to get only name
az group list --query "[].name" --output tsv
az group list --query "[].{Name:name}" --output tsv

//to list resources in a resource group
az resource list --resource-group vm-rg


//API MANAGEMENT

//to check API Management creation status
az apim show --name test-api-management-2349 --resource-group api-management-rg --output table


//STORAGE ACCOUNT
//create a storage account
az storage account create --name <STORAGE_NAME> --location <REGION> --resource-group AzureFunctionsContainers-rg --sku Standard_LRS

//get connection string
az storage account show-connection-string --resource-group AzureFunctionsContainers-rg --name <STORAGE_NAME> --query connectionString --output tsv

//to get storage account keys
 az storage account keys list -g azure-with-mongodb_group -n azurewithmongodbgroa2d3
 
 //to create a container inside a storage account
az storage container create -n mystoragecontainer --account-name azurewithmongodbgroa2d3 --account-key xxxxxxxxxxxxxxxxxxxxxxxxxx

 //to delete a container inside a storage account
az storage container delete --name mystoragecontainer --account-key xxxxxxxxxxxxxxxxxxxxxxxxxx --account-name azurewithmongodbgroa2d3

az storage account list -g "self-hosted-vm-rg" --query "[?name=='storagetestg1234']"

(az storage account list -g "self-hosted-vm-rg" --query "[?name=='storagetestg1234'].name" -o tsv | Out-String) -match "storagetestg1234"

if($(az storage account list -g "self-hosted-vm-rg" --query "[?name=='storagetestg1234'] | length(@)") -gt 0)
{
Write-Host "Storage account exists"
}
else{
Write-Host "Storage account does not exists"
}

//PRIVATE ENDPOINTS NETWORKING

az network private-endpoint-connection list -g self-hosted-vm-rg -n storagetestg1234 --type Microsoft.Storage/storageAccounts --query "[].id" --output tsv

az network private-endpoint-connection list -g self-hosted-vm-rg -n storagetestg1234 --type Microsoft.Storage/storageAccounts --query "[?properties.privateLinkServiceConnectionState.status=='Approved'].name" --output tsv

az network private-endpoint-connection approve --id "/subscriptions/xxxxxx-xxxx-xxxxx-xxxx-xxxxxxx/resourceGroups/self-hosted-vm-rg/providers/Microsoft.Network/privateEndpoints/storagetestg1234-pe"

az network private-endpoint-connection reject --id "/subscriptions/xxxxxx-xxxx-xxxxx-xxxx-xxxxxxx/resourceGroups/self-hosted-vm-rg/providers/Microsoft.Storage/storageAccounts/storagetestg1234/privateEndpointConnections/storagetestg1234.xxxxxx-xxxx-xxxx-xxxx-xxxxxxx"

//KEY VAULT
//to create a secret
az keyvault secret set --vault-name "test-keyvault1234ususus" --name "ExamplePassword" --value "xxxxxx"

//to set function app settings
az functionapp config appsettings set --name <APP_NAME> --resource-group AzureFunctionsContainers-rg --settings AzureWebJobsStorage=<CONNECTION_STRING>

az keyvault set-policy -n $KV_NAME --secret-permissions get list --spn <clientId from the Azure SPN JSON>
  
az keyvault secret show --name "keyvaulturi" --vault-name "pipelinekv1234" --query "value"

az keyvault secret show --name "keyvaulturi" --vault-name "pipelinekv1234" --query value --output tsv

//SERVICE ACCOUTS AND ROLE ASSIGNMENT
//to create a service principal at resource group level
az ad sp create-for-rbac --name "terraform-azure-sp" --role="Contributor" --scopes "/subscriptions/<subscription_id>/resourceGroups/<resourcegroup_name>"

{
  "clientId": "xxxxxx-xxxx-xxxx-xxxx-xxxxxxx",
  "clientSecret": "xxxxxx-xxxx-xxxx-xxxx-xxxxxxx",
  "subscriptionId": "xxxxxx-xxxx-xxxxx-xxxx-xxxxxxx",
  "tenantId": "xxxxxx-xxxx-xxxx-xxxx-xxxxxxx"
}


//to create a service principal at subscription level
az ad sp create-for-rbac --name "terraform-azure-sp" --role="Contributor" --scopes="/subscriptions/<subscription_id>"

az role assignment create --role "Key Vault Reader" --assignee {i.e user@microsoft.com} --scope /subscriptions/{subscriptionid}/resourcegroups/{resource-group-name}


//VIRTUAL MACHINES
//to get list of all windows-11 images
 az vm image list --offer windows-11 --location westeurope --all

az vm image list --offer UbuntuServer --all

az vm image list --offer 0001-com-ubuntu-server-jammy --location westeurope --all

az vm image list 

//to run command in a VM
az vm run-command invoke \
   --resource-group $RESOURCE_GROUP_NAME \
   --name $VM_NAME \
   --command-id RunShellScript \
   --scripts "sudo apt-get update && sudo apt-get install -y nginx"


//AZURE CONTAINER REGISTRY (ACR)

az acr show -n "aksdevclusteracr" --query loginServer --output tsv

az acr login -n prasadreddyacr

az acr repository list --name azureacrdev1234 

az acr repository delete --name myregistry --image samples/nginx:latest

az deployment group create --resource-group <resource-group-name> --template-file <path-to-template>

az container list

az container show --resource-group rg-acr-dev --name reactcourseenrollment

az container logs --resource-group rg-acr-dev --name reactcourseenrollment


az container exec --resource-group rg-acr-dev --name reactcourseenrollment --exec-command "/bin/sh"

az container show -g rg-acr-dev -n reactcourseenrollment --query 'containers[].environmentVariables'

az containerapp update --resource-group rg-acr-dev --name reactcourseenrollment --environment-variables "REACT_APP_BASEURL_PROD=https://react-course-enrollment-crud-application-backend.vercel.app"


az container create --resource-group rg-acr-dev --name reactcourseenrollment2 --image mcr.microsoft.com/azuredocs/aci-helloworld \
--ip-address Public --ports 9000 \
--environment-variables 'PORT'='9000'

az container create --resource-group rg-acr-dev --name myapp --image azureacrdev1234.azurecr.io/reactcourseenrollmentapp:latest --ip-address Public --ports 80 --environment-variables "REACT_APP_BASEURL_PROD=https://react-course-enrollment-crud-application-backend.vercel.app"

az container show --resource-group rg-acr-dev --name myapp --query 'containers[].environmentVariables'

az containerapp update --resource-group rg-acr-dev --name reactcourseenrollment --environment-variables "REACT_APP_BASEURL_PROD=https://react-course-enrollment-crud-application-backend.vercel.app

az container create --resource-group rg-acr-dev --name reactcourseenrollment2 --image mcr.microsoft.com/azuredocs/aci-helloworld \
--ip-address Public --ports 9000 \
--environment-variables 'PORT'='9000'

az container create --resource-group rg-acr-dev --name myapp --image azureacrdev1234.azurecr.io/reactcourseenrollmentapp:latest --ip-address Public --ports 80 --environment-variables "REACT_APP_BASEURL_PROD=https://react-course-enrollment-crud-application-backend.vercel.app"

az container show --resource-group rg-acr-dev --name myapp --query 'containers[].environmentVariables'

//to get acr credentials
$ACR_REGISTRY_ID= az acr show --name "demoacr" --query "id" --output tsv
$PASSWORD= az ad sp create-for-rbac --name "demoacr-spn" --scopes $ACR_REGISTRY_ID --role acrpush --query "password" --output tsv
$USER_NAME=az ad sp list --display-name "demoacr-spn" --query "[].appId" --output tsv

az acr credential show -n $(containerRegistry) --query username --output tsv		   
az acr credential show -n $(containerRegistry) --query 'passwords[0].value' --output tsv

registryUsername=$(az acr credential show -n $(containerRegistry) --query username --output tsv)				   
registryPassword=$(az acr credential show -n $(containerRegistry) --query 'passwords[0].value' --output tsv)
registry=$(az acr repository show -n $(containerRegistry) --repository azurefunction-docker-container --query registry --output tsv)
image=$(az acr repository show -n $(containerRegistry) --repository azurefunction-docker-container --query imageName --output tsv)
az container create -g rg-acr-demo-dev -n azurefunction --image $registry/$image:$(tag) --ip-address Public --registry-username $registryUsername --registry-password $registryPassword


//BICEP DEPLOYMENT
az deployment group create --resource-group <resource-group-name> --template-file biceptemplate.bicep


//AKS
//to create aks cluster
az aks create --resource-group TestResourceGroup --name TestAKSCluster --node-count 1 --generate-ssh-keys

//to get kubeconfig into local machine
az aks get-credentials --resource-group TestResourceGroup --name TestAKSCluster

//to install kubectl in aks
az aks install-cli


//AZ POWERSHELL COMMANDS

//To connect to Azure
Connect-AzAccount

Start a VM	
Start-AzVM -ResourceGroupName $myResourceGroup -Name $myVM

Stop a VM	
Stop-AzVM -ResourceGroupName $myResourceGroup -Name $myVM

Restart a running VM	
Restart-AzVM -ResourceGroupName $myResourceGroup -Name $myVM

Delete a VM	
Remove-AzVM -ResourceGroupName $myResourceGroup -Name $myVM

To install IIS Web Server in VM using PowerShell
Install-WindowsFeature Web-Server

//to install IIS Web server in VM
Set-AzVMExtension `
-ResourceGroupName LBresourcegroup `
-ExtensionName IIS `
-VMName myVM1 `
-Publisher Microsoft.Compute `
-ExtensionType CustomScriptExtension `
-TypeHandlerVersion 1.4 `
-SettingString ‘{“commandToExecute”:”powershell Add-WindowsFeature Web-Server; powershell Add-Content -Path \”C:\\inetpub\\wwwroot\\Default.htm\” -Value $($env:computername)”}’ `
-Location EastUS


Remove-AzResourceGroup -Name 'ContosoResourceGroup' -Force -AsJob

#to list all environment variables
dir env:

#to get an environment variable
Write-Host $env:ACCESS_KEY

$env:ARM_ACCESS_KEY

#to set an environment variable
  $env:ARM_CLIENT_ID      = 'xxxxxx-xxxx-xxxx-xxxx-xxxxxxx'
  $env:ARM_CLIENT_SECRET   = 'xxxxxx-xxxx-xxxx-xxxx-xxxxxxx'
  $env:ARM_TENANT_ID       = 'xxxxxx-xxxx-xxxx-xxxx-xxxxxxx'
  $env:ARM_SUBSCRIPTION_ID = 'xxxxxx-xxxx-xxxx-xxxx-xxxxxxx'

#to remove an environment variable
Remove-Item Env:ARM_ACCESS_KEY

# Azure Bicep

az bicep install

#to convert an ARM template to bicep
az bicep decompile --file webapp.json

# to convert a bicep template to ARM template
az bicep build --file webapp.bicep --outfile webapp.json

					   

//AZURE FUNCTIONS & WEBAPP
Dockerize Azure Functions

func init --worker-runtime node --language javascript --docker

func new --name HttpExample --template "HTTP trigger" --authlevel anonymous

func start

az functionapp restart --name $(functionAppName) --resource-group $(functionAppNameResourceGroupName)

if [[ $(az functionapp list --resource-group acr-azure-func-python-rg --query "[?name=='demp-python-function-app'] | length(@)") > 0 ]]
then
  echo "Function App exists"
else
  echo "Function App doesn't exist"
fi

az functionapp deployment container show-cd-url --name demp-python-function-app --resource-group acr-azure-func-python-rg

//Fucntion app plan
az functionapp plan create --resource-group acr-azure-func-python-rg --name asp-linux-demo-python-function-app2 --location eastus --sku P1V3 --is-linux

az functionapp create --name demo-python-function-app2 -p ASP-acrazurefuncpythonrg-96ad --storage-account teststoragev2dsdsds --resource-group acr-azure-func-python-rg --os-type Linux --functions-version 4 --runtime python --image azurefunctionpython.azurecr.io/azurefunctionpython-docker:latest --registry-username azurefunctionpython --registry-password xxxxxxxxxxxxxxxxxxxxxxxxxs

//set function app settings
az functionapp config appsettings set --name <APP_NAME> --resource-group AzureFunctionsContainers-rg --settings AzureWebJobsStorage=<CONNECTION_STRING>

//to enable continuos integration
az functionapp deployment container config --enable-cd true --name demo-python-function-app2 --resource-group acr-azure-func-python-rg

//App service plan
az appservice plan create --resource-group acr-azure-func-python-rg --name asp-linux-demo-python-function-app2 --is-linux --sku P1V3 --location eastus
@ShockwaveFox
Comment
