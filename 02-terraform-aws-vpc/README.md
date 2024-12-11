# 02-terraform-aws-vpc

This project sets up an AWS Virtual Private Cloud (VPC) using Terraform. It includes the necessary configuration files to define the VPC and its associated resources.

## Project Structure

```
02-terraform-aws-vpc
├── main.tf          # Main configuration file for Terraform
├── variables.tf     # Input variables for the Terraform configuration
├── outputs.tf       # Output values for the Terraform configuration
├── terraform.tfvars  # Values for the input variables
└── README.md        # Documentation for the project
```

## Prerequisites

- Terraform installed on your machine.
- An AWS account with appropriate permissions to create VPCs and related resources.

## Setup Instructions

1. Clone the repository or download the project files.
2. Navigate to the project directory:
   ```
   cd 02-terraform-aws-vpc
   ```
3. Update the `terraform.tfvars` file with your desired values for the variables.
4. Initialize the Terraform configuration:
   ```
   terraform init
   ```
5. Review the planned actions:
   ```
   terraform plan
   ```
6. Apply the configuration to create the VPC:
   ```
   terraform apply
   ```

## Outputs

After the infrastructure is created, the following outputs will be displayed:

- VPC ID
- CIDR Block

## Cleanup

To remove the resources created by this project, run:
```
terraform destroy
``` 

## License

This project is licensed under the MIT License.