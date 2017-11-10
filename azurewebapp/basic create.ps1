$rg = New-AzureRmResourceGroup -Name "70533rg" -Location "northeurope"
$location = "northeurope"
$planname = "70533plan"
$webappname = "my7533webapp"
$rgname = (Get-AzureRmResourceGroup -Name "70533rg").ResourceGroupName
$webappplan = New-AzureRmAppServicePlan -Location northeurope -Tier "Standard" -Name $planname -ResourceGroupName $rgname
#reate a webapp 
New-AzureRmWebApp -ResourceGroupName $rgname -Name $webappname -AppServicePlan $planname -Location $location


#Create the slots for webapp DEV and UAT
New-AzureRmWebAppSlot -Name $webappname -Slot "UAT" -ResourceGroupName $rgname -AppServicePlan $planname 
New-AzureRmWebAppSlot  -Name $webappname -Slot "DEV" -ResourceGroupName $rgname -AppServicePlan $planname 
New-AzureRmWebAppSlot  -Name $webappname -Slot "STAGING" -ResourceGroupName $rgname -AppServicePlan $planname 

<# To change  and configure any slot use SET commandlet
Set-AzureRmWebAppSlot -AppServicePlan $planname -Slot "UAT" -Name $webappname
Set-AzureRmWebAppSlot -AppServicePlan $planname -Slot "DEV" -Name $webappname
#>
#Publish a website with the next command:
Publish-AzureWebsiteProject -ProjectFile "D:\70-533\mysql_test.zip" -Name $webappname -Slot "STAGING"




