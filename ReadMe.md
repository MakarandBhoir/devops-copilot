# Terraform Project

## Overview
This repository contains Terraform configuration files for managing infrastructure as code.

## Project Structure
- `.gitignore`: Specifies files and directories to be ignored by Git.
- `main.tf`: The primary Terraform configuration file.
- `variables.tf`: Defines input variables for the Terraform configuration.
- `outputs.tf`: Defines output values for the Terraform configuration.
- `terraform.tfvars`: Contains the values for the input variables.

## Getting Started
1. **Install Terraform**: Follow the instructions on the [Terraform website](https://www.terraform.io/downloads.html) to install Terraform.
2. **Initialize the project**: Run `terraform init` to initialize the project.
3. **Plan the changes**: Run `terraform plan` to see the changes that will be made.
4. **Apply the changes**: Run `terraform apply` to apply the changes.

## Usage
- **Initialize**: `terraform init`
- **Plan**: `terraform plan`
- **Apply**: `terraform apply`
- **Destroy**: `terraform destroy`

## Project
- [`01-terraform-starter`](01-terraform-starter/README.md) : The main perpose of this project is to show you Terraform configuration using Github copilot
- [`02-terraform-aws-vpc`](02-terraform-aws-vpc/README.md) : The perpose of this project is to show you how to create vpc and related resources using terraform with the help of github copilot

## Contributing
Feel free to submit issues, fork the repository and send pull requests!

## License
This project is licensed under the MIT License.