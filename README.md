### Terraform Variables:

In the terraform.tfvars file you will want to configure the following variables:

| Variable Name | Value and Constraints | File Location | 
| ---------------|------------------------------|------------|
| region | Should be a valid Azure region | terraform.tfvars |
| org | Can be a fake company or just your name for example | terraform.tfvars |
| env | This is short for environment think: prod, dev, stage, test, etc.. | terraform.tfvars |


# Azure VNet Demonstration

This is a simple deployment that I've created to introduce you to the Terraform CLI, Terraform state, and deploying your first code. 


<br>


'''#===================#
# Variables Defined #
#===================#

# Here I am defining the variables
# Since it's a string I am using double quotes
env    = "lab"
org    = "tkdev"
region = "centralus" ```

### Resources Created:
This demo creates the following resources in the following order:

1. VPC
2. Subnets based on what is defined in terraform.tfvars
3. IGW attached to the VPC
4. Default route table that points 0.0.0.0/0 to the IGW
5. Security Group that allows 80 and 22 TCP inbound from anywhere (lock this down for further security)
6. EIPs based on how many zones you've defined (default is 2)
7. EC2 Instance(s) with Amazon Linux based on how many zones you've defined (default is 2)
8. S3 bucket with some randomly generated characters (optionally can use this for logging on the ALB) 




### Disclaimer
---
#### Content Usage and Liability

*As the author and creator of the content, I authorize the usage, distribution, and modification of my content for individuals (non-commercial entities), non-profit learning institutions (colleges, universities, vocational schools) and any other non-profit organizations that fall under the tax exempt organization status.*

#### IRS Exempt Organization Types
