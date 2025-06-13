

# 🛠️ Terraform – Infrastructure Setup on GCP

This folder contains Terraform configurations to provision cloud resources on Google Cloud Platform (GCP) for the Data Engineering Zoomcamp.

---

## 📚 Concepts Covered

- Infrastructure as Code (IaC) with Terraform
- Using `terraform init`, `plan`, `apply`, and `destroy`
- Managing Terraform state and variables
- Authenticating with Google Cloud SDK
- Creating GCS buckets and BigQuery datasets

🧠 See conceptual overview:  
👉 [Terraform_overview](../_terraform_overview.md)

---

## ⚙️ Execution Instructions

### 🔐 Step 1: Authenticate with GCP

Make sure you’ve exported your service account credentials:

```bash
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/keys/dtc-sa-key.json"

Then authenticate:

gcloud auth application-default login



⸻

🚀 Step 2: Initialize Terraform

terraform init



⸻

🔍 Step 3: Review the Infrastructure Plan

Replace <your-gcp-project-id> with your actual GCP project ID:

terraform plan -var="project=<your-gcp-project-id>"



⸻

⚒ Step 4: Apply the Plan (Provision Resources)

terraform apply -var="project=<your-gcp-project-id>"

Confirm when prompted by typing yes.

⸻

🧹 Step 5: Destroy Infrastructure (Clean Up)

To avoid incurring charges, destroy all resources when done:

terraform destroy -var="project=<your-gcp-project-id>"



⸻

📁 Files in This Directory

terraform/
├── main.tf
├── outputs.tf
├── variables.tf
└── README.md
