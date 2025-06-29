#=================================#
# Terraform Variable Declaration  #
#=================================#

# Variable presedence takes the following order:
# CLI at runtime
# Dedicated Terraform files *auto.tfvars or *.auto.tfvars.json
# terraform.tfvars (This file)
# Environment variables


variable "org" {
# We are telling Terraform what kind of variable to expect for org
    type        = string
    # This is for documentation purposes and can be used to describe the variables use
    description = "Should be the name of an organization"
}


variable "region" {
    type    = string
# A default value allows you to leave the variable blank and utilize this value
    default = "centralus"
}

variable "env" {
    type    = string
# A default value allows you to leave the variable blank and utilize this value
    description = "Should be the name of an environment like prod, dev, test, etc."
}
