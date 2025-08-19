#**Go to user's home directoty of terraform.**

cd /home/bob/terraform 

#Create main.tf file in /home/bob/terraform location & paste TF code inside this.

vi main.tf 

# Run Below Commands to execute the task further.

##Initialize Terraform:

```
terraform init  
```
##Terraform has been successfully initialized! (Downloads the AWS provider plugin.)

##Validate syntax:

```
terraform validate
```
##Confirms there are no syntax/config errors.

##Preview the plan:

```
terraform plan 
```
##Plan: 1 to add, 0 to change, 0 to destroy (This will show exactly what Terraform intends to create.)
#Nothing will be created yet — it’s just a dry run.

##Apply changes:

```
terraform apply 
```
##(Enter a value: **yes** & Apply complete! Resources: 1 added, 0 changed, 0 destroyed).


