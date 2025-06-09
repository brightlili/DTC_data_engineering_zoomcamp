
# 🛠️ GCP Setup Notes – Week 1

This document captures the step-by-step process I followed to configure Google Cloud Platform (GCP) for the Data Engineering Zoomcamp project.

---

## 📅 Date Started
June 2025

---

## 📁 Project Setup

### 1. ✅ Created a GCP Account
- Signed up via: https://console.cloud.google.com
- Enabled billing and claimed **€300 free credits**

### 2. ✅ Created a GCP Project
- Project Name: `DTC DE Course`
- Project ID: `dtc-de-zoomcamp-xxxxxx` (copy this for later use)

---

## 👤 Service Account & IAM Roles

### 3. ✅ Created Service Account
- Name: `zoomcamp-sa`
- ID: `zoomcamp-sa@<project-id>.iam.gserviceaccount.com`

### 4. ✅ Assigned Roles
- Viewer
- Storage Admin
- BigQuery Admin

🔒 _Note: These roles are needed for GCS and BigQuery access during the course._

### 5. ✅ Created and Downloaded Auth Key
- JSON Key downloaded to: `~/keys/dtc-sa-key.json`
- File was **never committed** to GitHub

---

## ⚙️ GCloud SDK & CLI

### 6. ✅ Installed Google Cloud SDK
- Downloaded for macOS (Apple Silicon): https://cloud.google.com/sdk/docs/install
- Extracted and installed with:
  ```bash
  tar -xvzf google-cloud-cli-darwin-arm.tar.gz
  ./google-cloud-sdk/install.sh

7. ✅ Authenticated CLI

gcloud auth application-default login

✅ Verified that authentication and token refresh worked.

⸻

🌍 Environment Variables

8. ✅ Set the Application Credentials

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/keys/dtc-sa-key.json"

To make it permanent, added this to ~/.zshrc:

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/keys/dtc-sa-key.json"

Then ran:

source ~/.zshrc



⸻

🔓 Enabled Required APIs

Via the GCP Console:
	•	IAM API
	•	IAM Credentials API

⸻

✅ Terraform Init (Preview)
	•	Initialized main.tf for:
	•	GCS bucket
	•	BigQuery dataset
	•	Configured backend for remote state (to be done later)

⸻

🚫 GitHub Safety Checklist
	•	.gitignore includes:

*.json
.terraform/
*.tfstate
*.tfstate.backup


	•	Verified: No credentials were pushed to GitHub

⸻

📚 References

	•	DataTalksClub Setup Guide

	•	GCP SDK Installation Docs

	•	IAM Roles Reference



