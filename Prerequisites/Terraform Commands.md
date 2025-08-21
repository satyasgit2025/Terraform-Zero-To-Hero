#**Go to user's home directoty of terraform like here user is bob.**

cd /home/bob/terraform 

#Create main.tf file in /home/bob/terraform location & paste TF code inside this.

```
vi main.tf 
```
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
##Confirms there are no syntax/config errors & End Msg will be like "Success! The configuration is valid".

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
##(Enter a value: **yes** & End Msg will be like "Apply complete! Resources: 1 added, 0 changed, 0 destroyed").
if didn't want to enter yes or execute command directly use below cmd.

```
terraform apply -auto-approve
```

##Terraform keeps track of resources in a file called terraform.tfstate in your working directory (/home/bob/terraform).

To see the resource use below comd.

```
terraform state list
```

##To see details about that resource use below cmd.

```
terraform state show ...keep output of abaove cmd...
```

