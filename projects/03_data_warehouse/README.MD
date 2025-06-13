
🏗️ Data Warehouse with BigQuery and dbt

This module focuses on building an efficient, production-grade Data Warehouse using Google BigQuery and dbt (Data Build Tool).

You’ll learn to:
	•	Load raw data into BigQuery
	•	Transform it using SQL with dbt
	•	Organize datasets into staging, marts, and reporting layers

⸻

🧰 Tools & Technologies

Tool	Purpose
BigQuery	Cloud-based Data Warehouse
dbt	Data modeling, transformation (T in ELT)
GCS	Google Cloud Storage (for staging)
Terraform	Infrastructure as Code (GCP setup)


⸻

📂 Folder Structure

data_warehouse/
│
├── data/                         # Source CSV/Parquet files
├── terraform/                    # GCP infrastructure (optional)
├── dbt/                          # dbt project directory
│   ├── models/
│   │   ├── staging/
│   │   └── marts/
│   ├── dbt_project.yml
│   └── profiles.yml             # dbt connection config
│
├── README.md
└── requirements.txt             # dbt and BigQuery packages


⸻

⚙️ Setup Instructions

1. Enable BigQuery and GCS on GCP
	•	Use Terraform or the GCP console.
	•	Create a GCS bucket and a BigQuery dataset (e.g., dtc_dataset)

2. Install dbt

pip install dbt-bigquery

3. Set up dbt profile

Configure your ~/.dbt/profiles.yml file:

zoomcamp:
  target: dev
  outputs:
    dev:
      type: bigquery
      method: service-account
      project: your-gcp-project-id
      dataset: dtc_dataset
      threads: 1
      keyfile: path/to/service_account.json


⸻

🚀 Run dbt

cd dbt

# Initialize dbt
dbt debug

# Run staging models
dbt run --select staging

# Run all models
dbt run

# Check lineage graph
dbt docs generate
dbt docs serve


⸻

📈 Example Models
	•	stg_yellow_tripdata.sql: Cleans and stages raw taxi trip data
	•	fact_trips.sql: Aggregates trip data for reporting
	•	dim_zones.sql: Enriched dimensional data for lookup

⸻

📚 References
	•	dbt Docs
	•	BigQuery Docs
	•	DataTalksClub Zoomcamp – Module 3
