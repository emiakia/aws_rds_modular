# Terraform RDS PostgreSQL Configuration

This repository contains a Terraform configuration for setting up a single-node PostgreSQL RDS instance on AWS, utilizing the free tier. The default PostgreSQL engine version is 16.3.

## Overview

- **Database Engine:** PostgreSQL
- **Engine Version:** 16.3 (default)
- **Instance Class:** db.t3.micro (Free Tier)
- **Storage Type:** General Purpose (SSD) - gp2
- **Allocated Storage:** 10 GB
- **Publicly Accessible:** Yes
- **Default VPC:** Utilized
- **Authentication:** Password-based

## Customization

You can customize the configuration by modifying the `variables.tf` file in the root directory. The default values are set for a basic PostgreSQL RDS setup. 

### Default Values

- **Engine Version:** 16.3
- **Instance Class:** db.t3.micro
- **Allocated Storage:** 10 GB
- **Storage Type:** gp2

To change these values, update the following variables in the `variables.tf` file:

- `dbins_allocated_storage`
- `dbins_storage_type`
- `dbins_engine_version`
- `dbins_instance_class`
- `dbins_username`
- `dbins_password`

## Outputs

After applying the Terraform configuration, the following outputs are available:

- **`db_instance_endpoint`**: The endpoint (public DNS) of the PostgreSQL RDS instance.
- **`db_instance_username`**: The master username for the PostgreSQL RDS instance.
- **`db_instance_password`**: The master password for the PostgreSQL RDS instance (marked as sensitive).

You can retrieve these values using the `terraform output` command after deployment.

## Usage

1. **Initialize Terraform**: 
   ```bash
   terraform init
   terraform plan
   terraform apply -auto-approve
   
   
   
