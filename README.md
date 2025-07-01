![tkdev_secondary](https://github.com/user-attachments/assets/45692378-8f3e-4df0-adb4-74b4d047a0d8)

# Azure VNet Demonstration

This lab will familiarize you with editing Terraform code, using the basic Terraform CLI commands, and lastly deploying resources.  

### Resources Created:
This demo creates the following resources:

- Resource Group
- Virtual Network (VNet)
- (2) Subnets
- Network Security Group (NSG)
- An NSG Policy allowing TCP 443 Inbound

<br>

# Lab Steps

### 1. Log into Azure and open Cloud Shell
![cloudshell](https://github.com/user-attachments/assets/a24f345c-e380-4f54-8a4b-f6b8463c023e)

<br>

### 2. Launch a Bash Cloud Shell
![image](https://github.com/user-attachments/assets/e03421ca-8057-4539-bfe8-c638d9473b3b)

<br>

### 3. Run the following command:
```az account show --query id --output tsv```
<br>
This is showing you your Azure subscription ID, this is highly sensitive.

<br>

### 4. Save this output somewhere safe or additionally turn it into a bash variable with this command:
```TF_VAR_sub_id=$(az account show --query id --output tsv)```
*Note the variable starts with TF_VAR. This is because if we name a bash variable TF_VAR, Terraform will pick it up at runtime as an environment variable*

<br>

### 5. Test and make sure your variable has the correct output:
```echo $TF_VAR_sub_id```

<br>

### 6. Use GitHub to clone the repo with the following command:
```git clone https://github.com/tkerbe2/tkdev-azure-terraform-cli-demo```

<br>

### 7. Move to the new directory with the following command:
```cd tkdev-azure-terraform-cli-demo```

<br>

### 8. Make sure all your files are there as you should see the following:
```ls```

![image](https://github.com/user-attachments/assets/2a2ef8b4-8e83-477d-af32-9c2eb841ec8a)

<br>

### 9. Use nano or vi to edit the terraform.tfvars file (I use nano in this guide):
```nano terraform.tfvars```

- Here you will change the name of the env variable to "prod" and change the org to something else
- Ctrl+O to write your changes
- Ctrl+X to exit nano

![image](https://github.com/user-attachments/assets/edeac33b-d69b-4d3d-9d70-79ebf7c39b0a)

<br>

### 10. Verify Terraform is installed with the version command:
```terraform version```
<br>
Your output should look like what is below:
<br>
```
Terraform v1.11.3
on linux_amd64
+ provider registry.terraform.io/hashicorp/azurerm v4.34.0

Your version of Terraform is out of date! The latest version
is 1.12.2. You can update by downloading from https://www.terraform.io/downloads.html
```
<br>

### 11. Verify you're still in the directory with TF files and perform a Terraform init:
```pwd```
```/home/taylor/tkdev-azure-terraform-cli-demo```
```terraform init```

If you are successful you should see soemthing similiar to the screenshot below:

![image](https://github.com/user-attachments/assets/adb4467b-d08b-4e25-88d0-66ca8205a45c)

<br>

### 12. Run a Terraform plan command:
```terraform plan```

A successful Terraform plan should have similar output at the bottom:
```Plan: 3 to add, 0 to change, 0 to destroy.```

<br>

### 13. Run a Terraform apply command:
```terraform apply```
<br>
![image](https://github.com/user-attachments/assets/cf6cdd57-8c97-4c19-8572-37cbe58c66ee)
- Type yes and hit enter to proceed

*Additionally you can use the following option to skip the validation check:*
```terraform apply -auto-approve```

- A successful apply should yield the following output:

<br>

```Apply complete! Resources: 3 added, 0 changed, 0 destroyed.```

### 14. Go verify your resources in Azure UI

![image](https://github.com/user-attachments/assets/949dc15b-d8d9-483b-b7ed-dae5815b2bb8)

### 15. Don't forget to destroy everything when you're done:
```terraform destroy```


