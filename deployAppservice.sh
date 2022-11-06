date=$(date '+%Y%m%d')
templateFile='appservice.json'
deploymentName='CreateAppservice'$date

az deployment group create \
  --name $deploymentName \
  --template-file $templateFile \
  --verbose