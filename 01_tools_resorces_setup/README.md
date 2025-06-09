# 🛠️ Week 1 - GCP & Local Environment Setup

This folder documents the setup steps and configurations from **Week 1** of the [DataTalks.Club Data Engineering Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp).

---

## ✅ Tasks Completed

- Created Google Cloud Project (`dtc-de-course`)
- Set up Billing & enabled APIs:
  - IAM API
  - IAM Credentials API
  - BigQuery
  - Cloud Storage
- Created a **Service Account** and assigned IAM roles:
  - Viewer
  - Storage Admin
  - Storage Object Admin
  - BigQuery Admin
- Downloaded service account keys (`.json`)
- Installed **Google Cloud SDK** and configured CLI with:
  ```bash
  gcloud auth application-default login
  export GOOGLE_APPLICATION_CREDENTIALS="$HOME/keys/dtc-sa-key.json"

-	Tested CLI & authentication
-   Set up Python environment with pandas, pyarrow, and google-cloud-storage  

# 📦 Week 1: Cloud Setup & Environment Preparation

This week focused on preparing my local and cloud environment for the Data Engineering Zoomcamp.

---

## ✅ What I Accomplished

- ✅ Set up GCP project and billing account
- ✅ Created service account with IAM roles:
  - Viewer
  - Storage Admin
  - BigQuery Admin
- ✅ Generated and downloaded service account keys
- ✅ Installed and authenticated `gcloud` CLI
- ✅ Set `GOOGLE_APPLICATION_CREDENTIALS` env variable
- ✅ Verified auth using: `gcloud auth application-default login`
- ✅ Initialized Terraform

---

## 🧠 Key Learnings

- Understanding service accounts vs user credentials
- Using CLI for Google Cloud authentication and resource management
- Setting up Infrastructure-as-Code using Terraform
- Best practice: Never commit credentials to GitHub!

---

## 📸 Screenshots

| Service Account Creation | IAM Roles |
|--------------------------|-----------|
| ![Service Account](../Screenshots/Service_acct.png) | ![IAM Roles](../screenshots/IAM_roles.png) |

---

## 🛠 Tools Installed

- Google Cloud SDK
- Terraform
- Git + GitHub CLI
