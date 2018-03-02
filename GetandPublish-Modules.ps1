# import modules into our repo DSCrepo:

$ToInstall = @("SqlServerDSC", "WebAdministrationDSC" ,"xSqlPs","xComputerManagement","xHyper-V","xWindowsUpdate"."xNetworking","xWebAdministration","xDatabase","NTFSPermission","xActiveDirectory","xFailOverCluster","xClusterDisk","xCluster","xClusterNetwork","xClusterPrefferedOwner","xClusterQuorum","xWaitForCluster","xWindowsEventForwarding")

import-module C:\ITSMensaCollection\DesiredStateConfigurations\PublishModulesAndMofsToPullServer.psm1

ForEach($module in $ToInstall ) {
save-module -name $module -path "C:\Program Files\WindowsPowerShell\DscService\Modules"
 Publish-DSCModuleAndMof -ModuleNameList xActiveDirectory -Source 'C:\Program Files\WindowsPowerShell\DscService\Modules\'
 # rm "C:\Program Files\WindowsPowerShell\DscService\Modules\$module"
}