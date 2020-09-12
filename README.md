# aws-fargate-cftemplate
AWS Fargate Template deployed by Ansible.

Shell script wrapped around Ansible playbook command in root of project.

Call to shell script giving an AWS region (e.g. pushTemplate.sh us-east-1).

Run AWS Configure before running this job to make sure your Ansible instance can connect to your AWS account
