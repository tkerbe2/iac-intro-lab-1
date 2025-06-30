![tkdev_secondary](https://github.com/user-attachments/assets/45692378-8f3e-4df0-adb4-74b4d047a0d8)

# Azure VNet Demonstration

This is a simple deployment that I've created to introduce you to the Terraform CLI, Terraform state, and deploying your first code. 

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
env    = "lab"
org    = "tkdev"
region = "centralus"
```

### Resources Created:
This demo creates the following resources:

1. Resource Group
2. Virtual Network (VNet)
3. (2) Subnets
4. Network Security Group (NSG)
5. An NSG Policy allowing TCP 443 Inbound





### Disclaimer
---
#### Content Usage and Liability

*As the author and creator of the content, I authorize the usage, distribution, and modification of my content for individuals (non-commercial entities), non-profit learning institutions (colleges, universities, vocational schools) and any other non-profit organizations that fall under the tax exempt organization status.*

#### IRS Exempt Organization Types
