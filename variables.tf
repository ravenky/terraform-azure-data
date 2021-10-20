#--------------------------------------------------------------
# Deployment variables 
#--------------------------------------------------------------

#Naming (prefix)
variable "prefix" {
  type        = string
  description = "The prefix that should be used for resources"
}

#Naming (suffix)
variable "suffix" {
  type        = string
  description = "The suffix that should be for resources"
}

#Which types of resources should be created?
variable "servicebus" {
  type        = string
  description = "deploy service bus or not?"
}

variable "datafactory" {
  type        = string
  description = "deploy data factory or not?"
}

variable "datafactory_git" {
  type        = string
  description = "deploy data factory (git-enabled) or not?"
}


variable "databricks" {
  type        = string
  description = "deploy databricks or not?"
}

variable "eventhub" {
  type        = string
  description = "deploy eventhub or not?"
}

variable "functions" {
  type        = string
  description = "deploy azure functions or not?"
}

variable "functions_appins" {
  type        = string
  description = "deploy azure functions with app.insights or not?"
}

variable "kusto" {
  type        = string
  description = "deploy azure kusto/data explorer or not?"
}

variable "eventgrid" {
  type        = string
  description = "deploy azure eventgrid or not?"
}

variable "analysis" {
  type        = string
  description = "deploy azure analysis server or not?"
}

variable "sqlserver" {
  type        = string
  description = "deploy azure sql server or not?"
}

variable "sqlep" {
  type        = string
  description = "deploy azure sql elastic pool or not?"
}

variable "sqldb" {
  type        = string
  description = "deploy azure sql database or not?"
}

#Location
variable "az_region" {
  type        = string
  description = "The default location for resources"
}

#Tags
variable "az_tags" {
  type        = map(any)
  description = "The default tags for resources and resources groups"
}

#Service Bus SKU
variable "az_sb_sku" {
  type        = string
  description = "The default Service Bus SKU"
}

#Service Bus Capacity
variable "az_sb_capacity" {
  type        = string
  description = "The default Service Bus number of message units (only allowed for Premium)"
}

#Service Bus Namespace Authorization Rule (permissions)

variable "az_sb_rule_listen" {
  type        = string
  description = "Listen permissions false or true"
}

variable "az_sb_rule_send" {
  type        = string
  description = "Read permissions false or true"
}

variable "az_sb_rule_manage" {
  type        = string
  description = "Manage permissions false or true"
}

#Service Bus Topic Settings

variable "az_sb_topic_partitioning" {
  type        = string
  description = "Should we enable partitioning?"
}

variable "az_sb_topic_duplicatedetection" {
  type        = string
  description = "Should we enable duplicate detection?"
}

#Service Bus Topic Authorization Rule
variable "az_sb_topic_rule_listen" {
  type        = string
  description = "Listen permissions false or true"
}

variable "az_sb_topic_rule_send" {
  type        = string
  description = "Read permissions false or true"
}

variable "az_sb_topic_rule_manage" {
  type        = string
  description = "Manage permissions false or true"
}

#Service Bus Topic Subscription settings
variable "az_sb_sub_delcount" {
  type        = string
  description = "How many maximum delivery count are you going to use?"
}

variable "az_sb_sub_deadlettering" {
  type        = string
  description = "Whether the Subscription has dead letter support when a message expires?"
}

variable "az_sb_sub_sessions" {
  type        = string
  description = "Do you want to enable sessions on the subscription?"
}

#Azure Storage
variable "az_stor_acc_tier" {
  type        = string
  description = "Azure Storage Account Tier (Std/Premium)"
}

variable "az_stor_repl_type" {
  type        = string
  description = "Azure Storage Replication Type (GRS/LRS/RA-GRS)"
}

variable "az_stor_kind" {
  type        = string
  description = "Azure Storage Account Kind (V1/V2/Blob)"
}

variable "az_stor_tier" {
  type        = string
  description = "Azure Storage Access Tier (Hot/Cool)"
}

variable "az_stor_secure" {
  type        = string
  description = "Is Azure Secure Transfer Required?"
}

#Azure Data Factory
variable "git_account" {
  type        = string
  description = "GitHub Account Name"
}

variable "git_branch" {
  type        = string
  description = "The Branch of the Repository to get code from"
}

variable "git_hostname" {
  type        = string
  description = "The GitHub Ent hostname or github.com if open source repo"
}

variable "git_repo" {
  type        = string
  description = "The name of the Git repo"
}

variable "git_folder" {
  type        = string
  description = "The root folder within the repo"
}

#Azure DataBricks
variable "az_spark_sku" {
  type        = string
  description = "The Azure DataBricks (Apache Spark) SKU - Standard, Premium or Trial"
}

#Azure Event Hubs Namespace
variable "az_hubns_sku" {
  type        = string
  description = "The Azure Event Hubs Sku (Basic/Standard)"
}

variable "az_hubns_maxunits" {
  type        = string
  description = "If  auto_inflate_enabled is set to True, defines maximum throughput units"
}

variable "az_hub_inflate" {
  type        = string
  description = "Should we enable auto_inflate on Event Hubs namespace? (true/false)"
}

variable "az_hubns_capacity" {
  type        = string
  description = "The Azure Event Hubs capacity (throughput units). Only applicable if SKU is Standard"
}

variable "az_hub_partcount" {
  type        = string
  description = "Azure Event Partition Count (1-32)"
}

variable "az_hub_retention" {
  type        = string
  description = "Azure Event Hub Message Retention (days)"
}

variable "az_hub_capture" {
  type        = string
  description = "Should we enable capturing to Azure Storage?"
}

#Azure Funtion App

variable "az_appsvc_sku" {
  type        = string
  description = "Azure App Service Plan SKU"
}
variable "az_appsvc_size" {
  type        = string
  description = "Azure App Service Plan Size"
}
variable "az_funcapp_runtime" {
  type        = string
  description = "Azure Function App Runtime"
}
variable "az_appins_type" {
  type        = string
  description = "Azure Application Insights Type (iOS/Java/Web and etc)"
}
variable "az_appins_enable" {
  type        = string
  description = "Should we enable AppIns for Azure Function App?)"
}
variable "az_stor_funcapp_tier" {
  type        = string
  description = "Azure Storage Tier)"
}
variable "az_stor_funcapp_repl" {
  type        = string
  description = "Azure Storage Replication Type)"
}

#Azure Data Explorer (kusto)
variable "az_kusto_sku" {
  type        = string
  description = "Azure Kusto Cluster SKU"
}
variable "az_kusto_nodes" {
  type        = string
  description = "Azure Kusto Cluster Nodes Count"
}

#Azure Analysis Server
variable "az_stor_ansrv_tier" {
  type        = string
  description = "Storage Account Tier"
}
variable "az_ansrv_sku" {
  type        = string
  description = "The Analysis Server SKU"
}
variable "az_stor_ansrv_repl" {
  type        = string
  description = "Storage Account Replication Type"
}
variable "az_ansrv_users" {
  type        = list(string)
  description = "List of email admin users to be added durint the creation"
}
variable "az_ansrv_powerbi" {
  type        = string
  description = "Should we allow PowerBi to access the server?"
}
variable "az_stor_ssa_start" {
  type        = string
  description = "The start date of the SSA token (used for BackUp storage)"
}
variable "az_stor_ssa_end" {
  type        = string
  description = "The expiration date of the SSA token (used for BackStorage)"
}

#Event Grid
variable "az_eventgrid_schema" {
  type        = string
  description = "Azure Event Grid Schema"
}

#SQL Server
variable "az_sqlserver_name" {
  type        = string
  description = "Azure SQL Server Name"
}

variable "az_sqlserver_version" {
  type        = string
  description = "Azure SQL Server Version"
  validation {
    condition     = can(regex("2.0|12.0", var.az_sqlserver_version))
    error_message = "SQL Server Version must be '2.0' for v11 SQL Server or '12.0' if you need v12 Server."
  }
}

variable "az_sqlserver_username" {
  type        = string
  description = "Azure SQL Server Admin UserName"
}

variable "az_sqlserver_password" {
  type        = string
  description = "Azure SQL Server Admin's Password"
  validation {
    condition     = length(var.az_sqlserver_password) > 8 && can(regex("(^.*[A-Z0-9].*[[:punct:]].*$)", var.az_sqlserver_password)) # meets Azure SQL password's policy
    error_message = "SQL Server Admin's password must contain more than 6 symbols (lowercase + upper-case and special/punctuation characters!)."
  }

}

variable "az_sql_ep_name" {
  type        = string
  description = "Azure SQL Elastic Pool Name"
}

variable "az_sql_ep_license_type" {
  type        = string
  description = "Azure SQL Elastic Pool License Type"
  validation {
    condition     = can(regex("LicenseIncluded|BasePrice", var.az_sql_ep_license_type))
    error_message = "SQL Server Elastic Pool License Type must either LicenseIncluded or BasePrice."
  }
}

variable "az_sql_ep_maxsize" {
  type        = string
  description = "Azure SQL Elastic Pool Max Size"
}

variable "az_sql_ep_sku_name" {
  type        = string
  description = "Azure SQL Elastic Pool SKU Type Name"
  validation {
    condition     = can(regex("BasicPool|StandardPool|PremiumPool", var.az_sql_ep_sku_name))
    error_message = "Provide a valid SQL Server Elastic Pool SKU Type Name (DTU-based)."
  }
}

variable "az_sql_ep_capacity" {
  type        = string
  description = "Azure SQL Elastic Pool Capacity (eDTU actually)"
}

variable "az_sql_ep_tier" {
  type        = string
  description = "Azure SQL Elastic Pool Tier"
  validation {
    condition     = can(regex("Basic|Standard|Premium", var.az_sql_ep_tier))
    error_message = "Provide a valid SQL Server Elastic Pool Tier (Basic, for instance)."
  }
}

variable "az_sql_ep_db_min_capacity" {
  type        = string
  description = "Azure SQL Elastic Pool Min Per-DB Capacity"
}

variable "az_sql_ep_db_max_capacity" {
  type        = string
  description = "Azure SQL Elastic Pool Min Per-DB Capacity"
}


variable "az_sql_db_name" {
  type        = string
  description = "Azure SQL Database Name"
}

variable "az_sql_db_maxsize" {
  type        = string
  description = "Azure SQL Database Max Size"
}

variable "az_sql_db_sku_name" {
  type        = string
  description = "Azure SQL Database SKU Name"
}


#-----------------------------------------------------------

