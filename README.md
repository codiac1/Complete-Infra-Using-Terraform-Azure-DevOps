# Infrastructure Pipeline for AKS Cluster on Azure using Terraform

This project provides a step-by-step guide to provisioning an AKS cluster on Azure using Terraform and Azure DevOps pipelines.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- An Azure subscription
- A service principal with sufficient permissions
- Azure DevOps organization and project
- Access to an Azure subscription
- Existing Azure resource group
- Azure Key Vault with stored client ID and client secret

## Technology

- Terraform
- Azure
- Azure DevOps

## File Information

- `backend.tf`: Configuration for remote backend
- `data.tf`: Data sources for existing Azure resources
- `main.tf`: Main configuration file for AKS cluster
- `output.tf`: Outputs from the Terraform execution
- `provider.tf`: Azure provider configuration
- `variables.tf`: Variable definitions
- `terraform.tfvars`: Variable values
- `azure-pipelines.yml`: Azure DevOps pipeline configuration

## Features

- Uses Azure RM as the provider
- Deploys an AKS cluster with customizable settings
- Utilizes a remote backend for state management
- Implements Azure Key Vault for secure credential management
- Uses an existing resource group
- Configures service principal for Azure authentication

## Usage

1. **Clone the repository:**

   ```bash
   git clone <your-repo-url>
   ```
2. **Configure the backend:**

   Update the `backend.tf` file with your remote backend configuration.

3. **Configure the variables in `terraform.tfvars` :**

   ```bash
   cluster_name       = "<your-cluster-name>"
   location           = "<your-location>"
   resource_group_name = "<your-resource-group-name>"
   dns_prefix         = "<your-dns-prefix>"
   node_count         = <your-node-count>
   vm_size            = "<your-vm-size>"
   tag                = "<your-environment-tag>"
   ```
   
4. **Run the Infra pipeline **

   Run the infra pipeline on Azure DevOps platform.

## Resources

- Azure Kubernetes Service (AKS)
- Azure Resource Group (Existing)
- Azure Key Vault (for storing credentials)

### Security Note
   This project uses Azure Key Vault to manage sensitive information. Ensure that you have the necessary permissions and that your service principal is correctly configured to access the Key Vault.
   
### Author

   [Pranav Tripathi](https://www.linkedin.com/in/pranav-tripathi2510/)