![tkdev_secondary](https://github.com/user-attachments/assets/45692378-8f3e-4df0-adb4-74b4d047a0d8)

# Azure VNet Demonstration

This lab will familiarize you with editing Terraform code, using the basic Terraform CLI commands, and lastly deploying resources.  

<br>

# Lab Steps

## 1.

Log into Azure and open Cloud Shell

![image](https://github.com/user-attachments/assets/f7ad988d-d657-4033-8505-634e5d67388e)






### Terraform Variables:

In the terraform.tfvars file you will want to configure the following variables:

| Variable Name | Value and Constraints | File Location | 
| ---------------|------------------------------|------------|
| region | Should be a valid Azure region | terraform.tfvars |
| org | Can be a fake company or just your name for example | terraform.tfvars |
| env | This is short for environment think: prod, dev, stage, test, etc.. | terraform.tfvars |

<br>

```
#===================#
# Variables Defined #
#===================#

# Here I am defining the variables
# Since it's a string I am using double quotes
env    = "prod"
org    = "abc"
region = "centralus"
sub_id = ""
```

### Resources Created:
This demo creates the following resources:

- Resource Group
- Virtual Network (VNet)
- (2) Subnets
- Network Security Group (NSG)
- An NSG Policy allowing TCP 443 Inbound





### Disclaimer
---
#### Content Usage and Liability

*As the author and creator of the content, I authorize the usage, distribution, and modification of my content for individuals (non-commercial entities), non-profit learning institutions (colleges, universities, vocational schools) and any other non-profit organizations that fall under the tax exempt organization status.*

#### IRS Exempt Organization Types
