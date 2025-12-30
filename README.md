<img src="https://imgur.com/a/O8tf2hm.png" height="10%" width="10%" alt="CICD-Terraform"/>

<h1>Multi-Platform Terraform CI/CD Pipeline (AWS)</h1>
This repository demonstrates a complete Infrastructure as Code (IaC) lifecycle using Terraform to deploy a VPC and EC2 architecture on AWS. The project highlights the automation of infrastructure through two major CI/CD platforms: GitLab CI/CD and GitHub Actions.

🚀 Project Overview
The goal of this project was to move away from manual "local machine" deployments and implement a professional "GitOps" workflow. I initially developed the pipeline in GitLab, utilizing its integrated container registry and manual triggers, before migrating the entire workflow to GitHub Actions to leverage its modular "Actions" marketplace and Environment protection rules.

Key Infrastructure Components:
VPC & Networking: Custom VPC, Public Subnets (us-east-1a/ca-central-1a), and Internet Gateway.

Security: Security Groups with restricted SSH/HTTP access.

Compute: Amazon EC2 instances provisioned via Terraform modules.

State Management: Remote state stored in Amazon S3 with State Locking enabled.
