# Terraform Infrastructure

This project uses Terraform to provision and manage infrastructure resources on AWS, including Amazon EKS (Elastic Kubernetes Service), RDS (Relational Database Service), EC2 instances, networking components, and more. The infrastructure is designed to support both development and production environments.

# Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Terraform Configuration](#terraform-configuration)
- [Infrastructure Components](#infrastructure-components)
  - [Amazon EKS Cluster](#amazon-eks-cluster)
  - [Amazon RDS Database](#amazon-rds-database)
  - [Elasticache Redis Cache](#elasticache-redis-cache)
  - [Amazon EC2 Instances](#amazon-ec2-instances)
  - [Networking](#networking)
    - [Networking Variables](#networking-variables)
    - [Virtual Private Cloud (VPC)](#virtual-private-cloud-vpc)
    - [Public Route Table](#public-route-table)
    - [Private Route Table](#private-route-table)
    - [Elastic IPs](#elastic-ips)
    - [NAT Gateways](#nat-gateways)
    - [Networking Output](#networking-output)
- [Environment Configuration](#environment-configuration)
  - [Development Environment Variables](#development-environment-variables)
  - [Production Environment Variables](#production-environment-variables)
- [Provider Configuration](#provider-configuration)
- [Access Key Configuration](#access-key-configuration)
- [Security Groups Configuration](#security-groups-configuration)
- [Usage](#usage)

## Prerequisites
- An AWS account with appropriate permissions.
- Terraform installed on your local machine.
- Basic knowledge of Terraform and AWS services.

## Setup
1. Clone the repository: `git clone https://github.com/Fahd-DevOps/Terraform.git`
2. Navigate to the repository: `cd Terraform`
3. Modify the necessary variables in `dev-env.tfvars` or `prod-env.tfvars` files.

## Terraform Configuration
- **backend.tf**: Configures where Terraform stores its configuration data.

## Infrastructure Components
### Amazon EKS Cluster
- **EKS.tf**: Defines an Amazon EKS cluster and its associated resources.
- **Eks_Role.tf**: Creates IAM roles for EKS.
- **Eks_node_group.tf**: Sets up worker nodes for EKS.
- **deploy_jenkins.tf**: Deploys Jenkins on the EKS cluster.
- **service_deploy.tf**: Creates a Kubernetes service for Jenkins.

### Amazon RDS Database
- **db.tf**: Sets up an Amazon RDS MySQL database.
- **RDS_Key.tf**: Manages RDS credentials using AWS Secrets Manager.

### Elasticache Redis Cache
- **elasticache.tf**: Establishes an Elasticache Redis cache.

### Amazon EC2 Instances
- **ec2_aws.tf**: Creates Amazon EC2 instances for various purposes.

### Networking
#### Networking Variables
- **network/variables.tf**: Defines variables for the networking configuration.

#### Virtual Private Cloud (VPC)
- **network/vpc.tf**: Creates a Virtual Private Cloud (VPC) along with its components.

#### Public Route Table
- **network/Public_Route_Table.tf**: Manages public route settings.

#### Private Route Table
- **network/Private_Route_Table.tf**: Handles private route settings.

#### Elastic IPs
- **network/EIP.tf**: Configures Elastic IPs for instances.

#### NAT Gateways
- **network/Nat_Gateway.tf**: Sets up NAT Gateways for private instances.

#### Networking Output
- **network/output.tf**: Outputs computed values from the networking configuration.

## Environment Configuration
#### Development Environment Variables
- **dev-env.tfvars**: Variables specific to the development environment.

#### Production Environment Variables
- **prod-env.tfvars**: Variables specific to the production environment.

## Provider Configuration
- **provider.tf**: Configures the AWS provider, including authentication.

## Access Key Configuration
- **Key_aws.tf**: Manages AWS access keys.

## Security Groups Configuration
- **Security_Groups.tf**: Defines inbound and outbound rules for security groups.

## Usage
1. Ensure AWS credentials are configured on your system.
2. Navigate to the Terraform directory.
3. Run `terraform init` to initialize the project.
4. Run `terraform apply -var-file=dev-env.tfvars` to deploy the development environment.
5. To deploy the production environment, replace `dev` with `prod` in the var-file.
