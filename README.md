<img src="https://i.imgur.com/CoZfd7J.jpeg" height="10%" width="10%" alt="CICD-Terraform">
<h1>Multi-Platform Terraform CI/CD Pipeline (AWS)</h1>
This repository demonstrates a complete Infrastructure as Code (IaC) lifecycle using Terraform to deploy a VPC and EC2 architecture on AWS. The project highlights the automation of infrastructure through two major CI/CD platforms: GitLab CI/CD and GitHub Actions.

<h2>🚀 Project Overview</h2>
The goal of this project was to move away from manual "local machine" deployments and implement a professional "GitOps" workflow. I initially developed the pipeline in GitLab, utilizing its integrated container registry and manual triggers, before migrating the entire workflow to GitHub Actions to leverage its modular "Actions" marketplace and Environment protection rules.

<h3>Key Infrastructure Components:</h3>

**VPC & Networking:** Custom VPC, Public Subnets (us-east-1a/ca-central-1a), and Internet Gateway.

**Security:** Security Groups with restricted SSH/HTTP access.

**Compute:** Amazon EC2 instances provisioned via Terraform modules.

**State Management:** Remote state stored in Amazon S3 with State Locking enabled.


<h2>Prerequisites:</h2>

- <b>An AWS Account with IAM credentials.</b>
- <b>An S3 Bucket for backend state storage.</b>
- <b>Terraform installed locally (for initial setup).</b>

<h2>🛠 CI/CD Pipeline Architecture</h2>

The pipeline is divided into four distinct stages to ensure code quality and safety:

<img src="https://i.imgur.com/ZX0FyN6.png" height="62%" width="62%" alt="Stages">

<h2>Configuration:</h2>

* **Backend Setup:** Update `backend.tf` with your specific S3 bucket name.
  
  <img src="https://i.imgur.com/vva7G7w.png" width="600" alt="backend setup">

* **Secret Management:** Add your AWS credentials to your repository secrets:
  * `AWS_ACCESS_KEY_ID`
  * `AWS_SECRET_ACCESS_KEY`

* **Deploy:** 1. **Push** code to the `main` branch to trigger the **Validate** and **Plan** stages.
  2. **Navigate** to the **Actions** tab in GitHub to manually approve the **Apply** stage.
