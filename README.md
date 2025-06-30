### Terraform Variables:

In the terraform.tfvars file you will want to configure the following variables:

| Variable Name | Value and Constraints | File Location | 
| ---------------|------------------------------|----------|
| region | Should be a valid Azure region | terraform.tfvars
| org | Can be a fake company or just your name for example | terraform.tfvars
| env | This is short for environment think: prod, dev, stage, test, etc.. | terraform.tfvars


# Azure VNet Demonstration

I created this lab as an example for my Hennepin Tech students. The first part of this lab is to create a functioning highly available web application in the AWS Console. The second component of this lab is deploying these same resources with code. The focus and intent of this lab is to familiarize with AWS Console (VPC[^1], EC2[^2], S3[^3]) and recognize the advantages of using IaC.  

[^1]: In this lab we specifically build many components with the VPC service: [VPC Reference](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
[^2]: In this lab we we create an ALB and EC2 instances with the EC2 service: [EC2 Reference](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html)
[^3]: In this lab we create an S3 bucket with the S3 service: [S3 Reference](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html)

<br>

#========================#
# Declare Variables Here #
#========================#

#===================#
# Variables Defined #
#===================#

# Here I am defining the variables
# Since it's a string I am using double quotes
env    = "lab"
org    = "tkdev"
region = "centralus" 

#====================#
# Network Variables  #
#====================#

# /23 supports up to 512 usable IPs
# 192.168.10.1 - 192.168.11.254
vpc_cidr = "192.168.10.0/23"

# AZ list used for naming and looping mechanism
# us-west-1 doesn't have a b
availability_zones = {
    0 = "us-west-1a"
    1 = "us-west-1c"
}

# How many subnets to create
# This should match the availability_zones


# What size of network you want
# 5 is a /28
borrowed_bits = 5

```
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
