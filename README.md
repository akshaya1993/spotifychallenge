**Terraform Spotify Challenge**

**Overview**

The Terraform Spotify Challenge involves using Terraform to create and manage infrastructure as code (IaC) for deploying and managing a Spotify-like playlist application. The challenge demonstrates your ability to provision cloud resources, configure services, and integrate them to achieve a functional application.

**Prerequisites**

Before starting, ensure you have the following:

Terraform installed on your local machine (Installation Guide).

AWS CLI configured with proper credentials (Setup Guide).

An active AWS account.

A basic understanding of Terraform, AWS, and cloud infrastructure.

**Features**

This challenge includes:

Creating an AWS VPC with subnets.

Setting up an EC2 instance to host the application.

Configuring security groups for access control.

Using Terraform modules to promote reusability.

Deploying the Spotify playlist application on the provisioned infrastructure.



**Steps to Deploy**

Clone the Repository

git clone <repository-url>
cd terraform-spotify-challenge

Initialize Terraform
Run the following command to initialize the Terraform project and download necessary providers:

terraform init

Customize Variables
Update the variables.tf file or provide a terraform.tfvars file to set custom values for your project.

Validate the Configuration
Ensure your configuration is valid:

terraform validate

Plan the Infrastructure
Generate a plan to see the resources that will be created:

terraform plan

Apply the Configuration
Deploy the infrastructure:

terraform apply

Confirm the changes when prompted.

Access the Application

Note the public IP address of the EC2 instance (provided in the output).

Open the IP address in your browser to access the Spotify playlist application.


**Cleaning Up**

To destroy the infrastructure and avoid incurring unnecessary costs:

terraform destroy

Troubleshooting

**Terraform Errors:**

Run terraform fmt to fix syntax issues.

Use terraform refresh to update the state file with current infrastructure.

**AWS Permission Issues:**

Verify that your AWS credentials have sufficient permissions.

Application Not Accessible:

Ensure the security group allows traffic on the required port (e.g., port 80 for HTTP).

Future Enhancements

Automate deployment using CI/CD pipelines.

Use Terraform Cloud or remote state management for collaboration.

Extend the application to integrate with AWS Lambda or API Gateway.
