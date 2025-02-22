# AWS-Infra-Terraform
Project: AWS Infrastructure as Code with Terraform

## Overview
This project sets up a simple web server using Terraform on AWS. It provisions the following resources:
- A **VPC** with a public subnet
- A **Security Group** allowing HTTP access
- An **EC2 instance** running Nginx
- An **Elastic IP** attached to the instance

## Prerequisites
Before deploying this project, ensure you have:
- An **AWS account**
- **Terraform** installed ([Install Terraform](https://developer.hashicorp.com/terraform/downloads))
- AWS CLI configured with valid credentials

## Project Structure
```
/modules
  /vpc
    - main.tf
    - outputs.tf
    - variables.tf
  /ec2
    - main.tf
    - outputs.tf
    - variables.tf
/main.tf
/provider.tf
/outputs.tf
/variables.tf
```

## Setup Instructions
1. **Clone the repository**
   ```sh
   git clone <repo-url>
   cd <repo-folder>
   ```

2. **Initialize Terraform**
   ```sh
   terraform init
   ```

3. **Plan the deployment**
   ```sh
   terraform plan
   ```

4. **Apply the configuration**
   ```sh
   terraform apply -auto-approve
   ```

5. **Retrieve the public IP**
   ```sh
   terraform output web_server_public_ip
   ```
   Access the web server in your browser: `http://<public-ip>`

## Modules Explained
### VPC Module (`/modules/vpc`)
- Creates a **VPC** and a **public subnet**
- Defines a **security group** allowing HTTP (port 80) access

### EC2 Module (`/modules/ec2`)
- Creates an **EC2 instance** using an Amazon Linux 2 AMI
- Installs and starts **Nginx** via user data
- Attaches an **Elastic IP**

## Cleanup
To destroy all created resources:
```sh
terraform destroy -auto-approve
```

## Notes
- The instance is configured to automatically start Nginx.
- Security Group allows **HTTP traffic from any IP**.
- Modify variables in `variables.tf` as needed.

## Author
Prasad Reddy

