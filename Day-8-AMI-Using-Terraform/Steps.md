1. Get the Instance ID for xfusion-ec2

Since Terraform requires the instance ID (not the name), you’ll need to get the instance ID for the xfusion-ec2 instance. You can retrieve it using the AWS CLI:
```
aws ec2 describe-instances --filters "Name=tag:Name,Values=xfusion-ec2" --query "Reservations[].Instances[].InstanceId" --output text
```
2. Update the instance id  in Terraform Configuration main.tf file
```
vi main.tf
```
3. Run the Terraform Commands.
```
terrafrom init
terraform validate
terrafrom plan
terrafrom apply
```
4. Verify AMI Availability.
```
aws ec2 describe-images --image-ids ami-xxxxxxxxxx --query "Images[].State"
```

