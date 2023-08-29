# Terraform Infrastructure

This project uses Terraform to provision and manage infrastructure resources on AWS, including Amazon EKS (Elastic Kubernetes Service), RDS (Relational Database Service), EC2 instances, networking components, and more. The infrastructure is designed to support both development and production environments.

## Table of Contents

- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)


## Project Structure

The project is structured into multiple files, each responsible for provisioning different resources and components:

- **backend.tf**: Manages where Terraform stores its configuration data.
- **provider.tf**: Specifies the cloud providers (AWS, Kubernetes) for Terraform.
- **variables.tf**: Holds variable definitions for Terraform.
- **deploy_jenkins.tf**: Deploys Jenkins on Kubernetes.
- **service_deploy.tf**: Sets up a Kubernetes service for Jenkins.
- **ec2_aws.tf**: Creates Amazon EC2 instances.
- **db.tf**: Sets up a database using Amazon RDS.
- **elasticache.tf**: Establishes a managed Redis cache.
- **Eks_Role.tf**: Defines permissions for Amazon EKS.
- **Eks_node_group.tf**: Creates worker nodes for Amazon EKS.
- **EKS.tf**: Creates an Amazon EKS cluster.
- **Key_aws.tf**: Generates an SSH key pair.
- **network/EIP.tf**: Configures Elastic IPs.
- **network/Nat_Gateway.tf**: up NAT Gateways.
- **network/Private_Route_Table.tf**: Manages private route settings.
- **network/Public_Route_Table.tf**: Handles public route settings.
- **network/output.tf**: Provides output information about the created infrastructure.
- **network/variables.tf**: Stores variable definitions for the network.
- **network/vpc.tf**: Creates a Virtual Private Cloud (VPC).
- **Security_Groups.tf**: Defines security rules.
- **dev-env.tfvars**: Contains variables for the development environment.
- **prod-env.tfvars**: Contains variables for the production environment.

## Prerequisites

- AWS Account
- AWS CLI configured with necessary permissions
- Terraform installed
- kubectl installed (for Kubernetes-related resources)
- Basic understanding of AWS, Terraform, and Kubernetes concepts

## Getting Started

1. Clone this repository to your local machine.
2. Update `dev-env.tfvars` and `prod-env.tfvars` files with your environment-specific variables.
3. Run the following commands to initialize and apply the Terraform configuration:

   ```sh
   terraform init
   terraform apply -var-file=dev-env.tfvars
