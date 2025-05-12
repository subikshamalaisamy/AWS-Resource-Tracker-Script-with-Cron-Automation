# AWS Resource Tracker

This Bash script automates the monitoring of AWS resources like S3 buckets, EC2 instances, Lambda functions, and IAM users. It's designed to run on a schedule using cron and logs the output for easy tracking.

## 🛠 Technologies Used
- AWS CLI
- Bash
- jq
- cron (Linux Scheduler)
- EC2 (Ubuntu)
- MobaXterm (for SSH/SFTP access)

## 📦 Resources Tracked
- S3 Buckets
- EC2 Instances
- Lambda Functions
- IAM Users

## 🚀 Setup

1. Launch an EC2 instance.
2. SSH into the instance.
3. Install AWS CLI and jq.
4. Configure AWS CLI: `aws configure`
5. Upload the script using MobaXterm or SCP.
6. Make the script executable:
```bash
chmod 777 aws_resource_tracker.sh

## Add to crontab:

crontab -e

0 * * * * /home/ubuntu/aws_resource_tracker.sh > /home/ubuntu/aws_resource_tracker.log 2>&1

