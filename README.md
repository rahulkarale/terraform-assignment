# Guide

## Pre-requisites
1. AWS Account
2. Terraform Setup
4. AWS CLI

## Getting Started
1. Clone the repo to a local directory.

```
git clone https://github.com/rahulkarale/terraform-assignment.git
```

2. Set AWS Providers
   Add below values to environment variables
    ```sh
    TF_VAR_AWS_ACCESS_KEY_ID
    TF_VAR_AWS_SECRET_ACCESS_KEY
    ```
   ***OR***

   Add below code to provider.tf
   ```
   provider "aws" {
    region     = "us-east-1"
    access_key = "my-access-key"
    secret_key = "my-secret-key"
   }
   ```
3. Get Terraform Modules with below command.
    ```sh
    terraform get -update
    ```
   
4. Plan your infrastructure. It will show you infrastructure changes (create, modify or delete), it will going to make.
    ```sh
    terraform plan 
    ```
5. Create your infrastructure. It will apply the changes shown in previous step.
    ```sh
    terraform apply -auto-approve
    ```