Terraform AWS Lightsail Instance
This project uses Terraform to create a new AWS Lightsail instance with the following specifications:

Name: Lightsail-1
Availability Zone: us-east-1a
Blueprint: Amazon Linux 2
Bundle: micro_1_0 
User Data: A script (data.sh) 
Tags: Name = Lightsail_hepher

Setup
1. Clone the Repository
Clone the repository to your local machine:


git clone https://github.com/Hepher114/terraform-lightsail.git
cd terraform-lightsail

2. Initialize Terraform
Initialize the Terraform configuration:

terraform init
3. Plan the Deployment
Check what resources will be created with the following command:

terraform plan

4. Apply the Configuration
Create the Lightsail instance by applying the configuration:
terraform apply
