Authenticating with public key "Imported-Openssh-Key"
    +----------------------------------------------------------------------+
    ¦                 • MobaXterm Personal Edition v25.2 •                 ¦
    ¦               (SSH client, X server and network tools)               ¦
    ¦                                                                      ¦
    ¦ ? SSH session to ubuntu@54.221.145.169                               ¦
    ¦   • Direct SSH      :  ?                                             ¦
    ¦   • SSH compression :  ?                                             ¦
    ¦   • SSH-browser     :  ?                                             ¦
    ¦   • X11-forwarding  :  ?  (remote display is forwarded through SSH)  ¦
    ¦                                                                      ¦
    ¦ ? For more info, ctrl+click on help or visit our website.            ¦
    +----------------------------------------------------------------------+

Welcome to Ubuntu 24.04.2 LTS (GNU/Linux 6.8.0-1028-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Mon May 12 09:09:18 UTC 2025

  System load:  0.01              Processes:             108
  Usage of /:   42.3% of 6.71GB   Users logged in:       0
  Memory usage: 20%               IPv4 address for enX0: 172.31.25.189
  Swap usage:   0%


Expanded Security Maintenance for Applications is not enabled.

38 updates can be applied immediately.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


Last login: Mon May 12 08:03:56 2025 from 27.61.63.212
ubuntu@ip-172-31-25-189:~$ cat /home/ubuntu/aws_resource_tracker.sh
#!/bin/bash
#
###########
## Author: Subiksha
##Date: 10/05/2025
##
##Version: v1
#This script will repot the aws resource usage
###########
#

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users
#
#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourseTracker

#list ec2 instances
echo "print list of ec2 instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'> resourseTracker



#list aws lambda
echo "print list of aws lambda"

aws lambda list-functions > resourseTracker


#list iam users
echo "print list o iam users"

aws iam list-users > resourseTracker:q!


ubuntu@ip-172-31-25-189:~$
