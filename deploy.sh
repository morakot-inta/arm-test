#az account set --subscription [SubscriptionID/SubscriptionName]
#az configure --default group='ARM-learning-eu-RG'

date=$(date '+%Y%m%d')
templateFile='CreateVnet.json'
deploymentName='reCreateVnet1incremental'$date
vnetName="ARM-learning-01-vnet"
addrPrefix="10.0.0.0/16"
sub1Prefix="10.0.1.0/24"
sub2Prefix="10.0.2.0/24"

az deployment group create --mode Incremental \
  --name $deploymentName \
  --template-file $templateFile \
  --parameters VnetName=$vnetName addrPrefix=$addrPrefix sub1Prefix=$sub1Prefix sub2Prefix=$sub2Prefix 
