## Project Instructions
Play a critical role in an organization’s cloud computing strategy as an AWS Cloud Architect. Learn to plan, design, and implement secure cloud infrastructure in AWS at scale. Begin by designing and building high availability infrastructure, and then move on to building scalable, secure, and cost-optimized architecture. Finally, explore and execute best practices and strategies around securing access to cloud services and infrastructure.

### Task 1: Create AWS Architecture Schematics
You have been asked to plan and provision a cost-effective AWS infrastructure for a new social media application development project for 50,000 single-region users. The project requires the following AWS infrastructure and services:
1. Infrastructure in the following regions: us-east-1
2. Users and Client machines
3. One VPC
4. Two Availability Zones
5. Four Subnets (2 Public, 2 Private)
6. A NAT Gateway
7. A CloudFront distribution with an S3 bucket
8. Web servers in the Public Subnets sized according to your usage estimates
9. Application Servers in the Private Subnets sized according to your usage estimates
10. DB Servers in the Private Subnets
11. Web Servers Load Balanced and Autoscaled
12. Application Servers Load Balanced and Autoscaled
13. A Master DB in AZ1 with a read replica in AZ2

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task1/Udacity_Diagram_1.pdf)

You have been asked to plan a SERVERLESS architecture schematic for a new application development project. The project requires the following AWS infrastructure and services:
1. A user and client machine
2. AWS Route 53
3. A CloudFront Distribution
4. AWS Cognito
5. AWS Lambda
6. API Gateway
7. DynamoDB
8. S3 Storage

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task1/Udacity_Diagram_2.pdf)

### Task 2: Calculate Infrastructure Costs
Use the AWS Pricing Calculator to estimate how much it will cost to run the services in your Part 1 diagram for one month.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task2/Initial_Cost_Estimate.csv)

Your budget has been reduced from $8,000-$10,000 to a maximum of $6,500.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task2/Reduced_Cost_Estimate.csv)

Your budget has been increased to $20,000.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task2/Increased_Cost_Estimate.csv)

### Task 3: Configure Permissions
Update the AWS password policy.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task3/udacity_password_policy.png)

Create a Group named CloudTrailAdmins and give it the two CloudTrail privileges.

Create a Group named Reviewers and give it the Billing privilege.

Configure a user named CloudTrail and a user named Accountant. Give the users AWS Console access and assign them a password that conforms to your password policy. Require them to change their password when they login.

Assign CloudTrail to the CloudTrailAdmins group. Assign Accountant to the Reviewers group.

Test both user accounts by logging into the AWS console as the users CloudTrail and Accountant after changing their passwords on login. Login using your numerical AccountID.

While logged-in as the user CloudTrail, go to the CloudTrail page and create a trail named Udacity_Trail. Enable logging on all Read/Writes Management Events and S3 and Lambda events Data Events. Create a new S3 Bucket to store the CloudTrail log. There is no need for advanced configuration.

Download the portion of the CloudTrail log that shows the entire Task 3 timeframe and save it as UdacityCloudTrailLog.csv.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task3/UdacityCloudTrailLog.csv)

Before Logging off, return to the CloudTrail configuration page. Disable S3 logging.

### Task 4: Set up Cost Monitoring
Configure CloudWatch billing alarm

Set up a Billing alarm with a $5 threshold

Set up notification so that you get an email alert when the alarm is triggered.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task4/CloudWatch_alarm.png)

### Task 5: Use Terraform to Provision AWS Infrastructure
Part 1
In the main.tf file write the code to provision
1. AWS as the cloud provider
2. Use an existing VPC ID
3. Use an existing public subnet
4. 4 AWS t2.micro EC2 instances named Udacity T2
5. 2 m4.large EC2 instances named Udacity M4


Run Terraform.

Take a screenshot of the 6 EC2 instances in the AWS console.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task5/Exercise_1/Terraform_1_1.png)

Use Terraform to delete the 2 m4.large instances.

Take an updated screenshot of the AWS console showing only the 4 t2.micro instances.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task5/Exercise_1/Terraform_1_2.png)

Part 2
In the Exercise_2 folder, write the code to deploy an AWS Lambda Function using Terraform. Your code should include:

1. A lambda.py file
2. A main.tf file
3. An outputs.tf file
4. A variables.tf file


Take a screenshot of the EC2 instances page.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task5/Exercise_2/Terraform_2_1.png)

Take a screenshot of the VPC page.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task5/Exercise_2/Terraform_2_2.png)

Take a screenshot of the CloudWatch log entry for the lambda function execution.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task5/Exercise_2/Terraform_2_3.png)

### Task 6: Destroy the Infrastructure using Terraform and prepare for submission
Destroy all running provisioned infrastructure using Terraform so as not to incur unwanted charges.

Take a screenshot of the EC2 instances page.

[Answer](https://github.com/mludden55/udacity-aws-cloud-architect/tree/master/Project2-DesignProvisionMonitorInAWS/Task6/Terraform_destroyed.png)