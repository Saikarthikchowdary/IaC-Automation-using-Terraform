# Cloud DevOps Automation with Terraform, Jenkins, and Git

This project demonstrates **Infrastructure as Code (IaC) automation** using **Terraform** along with other DevOps tools like **Jenkins** and **Git**.  
The goal is to automate infrastructure provisioning, configuration, and CI/CD pipelines to enable faster, reliable, and repeatable deployments.

---

## 🚀 Features

- **Terraform for IaC**  
  - Provision AWS infrastructure (VPC, Security Groups, EC2, etc.)  
  - Manage dependencies with Terraform modules  
  - Version-locked providers (`.terraform.lock.hcl`)

- **Jenkins for CI/CD**  
  - Automates Terraform workflows (`init`, `plan`, `apply`)  
  - Integrates with Git to trigger builds on commits  
  - Provides visibility of deployments with build logs

- **Git for Version Control**  
  - Infrastructure and pipeline code is versioned  
  - Branching strategy for feature development  
  - Collaborative workflows with GitHub/GitLab

---


---

## ⚙️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) ≥ v1.6  
- [Git](https://git-scm.com/downloads)  
- [Jenkins](https://www.jenkins.io/download/) (can be installed with `jenkins-install.sh`)  
- AWS account and credentials configured (`~/.aws/credentials`)

---

## 🛠️ Setup & Usage

 **Clone the repository**
   ```sh
   git clone https://github.com/Saikarthikchowdary/IaC-Automation-using-Terraform.git
   cd clouddevops
   terraform init
   terraform plan
   terraform apply


  
