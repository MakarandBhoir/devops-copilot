# 01-terraform-starter

This is a Terraform project named `01-terraform-starter`. It serves as a starter template for creating and managing infrastructure using Terraform.

## Project Structure

```
01-terraform-starter
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Files Description

- **main.tf**: This file contains the main configuration for Terraform, defining the resources and provider configurations.
  
- **variables.tf**: This file specifies the input variables for the Terraform configuration, including variable names, types, and default values.

- **outputs.tf**: This file defines the output values that Terraform will display after applying the configuration.

## Getting Started

To get started with this Terraform project, follow these steps:

1. **Initialize the Project**: Run the following command to initialize the Terraform configuration:
   ```
   terraform init
   ```

2. **Plan the Infrastructure**: Use the following command to create an execution plan:
   ```
   terraform plan
   ```

3. **Apply the Configuration**: To create the resources defined in the configuration, run:
   ```
   terraform apply
   ```

4. **Destroy the Infrastructure**: If you want to remove all the resources created, use:
   ```
   terraform destroy
   ```

## Requirements

- Terraform installed on your machine.
- Access to the necessary cloud provider credentials.

## License

This project is licensed under the MIT License.