# Setup Terraform for AWS

To configure AWS credentials and set up Terraform to work with AWS, you'll need to follow these steps:

1. **Install AWS CLI (Command Line Interface)**:

Make sure you have the AWS CLI installed on your machine. You can download and install it from the [AWS CLI download page](https://aws.amazon.com/cli/) or [Link](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html).

2. **Create an AWS IAM User**:

To interact with AWS programmatically, Need an IAM (Identity and Access Management) user with appropriate permissions. Below is the setpes to create:

a. Log in to the AWS Management Console with an account that has administrative privileges.

b. Navigate to the IAM service. Click on "Users" in the left navigation page and then click "Add user.Choose a username, select "Programmatic access" as the access type, and click "Next: Permissions."

C. Attach policies to this user based on your requirements. At a minimum, you should attach the "AmazonEC2FullAccess" policy for basic EC2 operations. If you need access to other AWS services, attach the relevant policies.

d. Save the Access Key ID and Secret Access Key. This'll need for Terraform.

3. **Configure AWS CLI Credentials**:

Use the AWS CLI to configure your credentials. Open a terminal and run:

```
aws configure
```

It will ask to enter your AWS Access Key ID, Secret Access Key, default region, and default output format.
