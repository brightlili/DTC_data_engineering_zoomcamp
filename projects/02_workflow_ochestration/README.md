
🧭 Workflow Orchestration

This module focuses on workflow orchestration in data engineering using tools like Apache Airflow. You’ll learn how to schedule, monitor, and manage data pipelines reliably in production environments.

⸻

🛠️ Tech Stack
	•	Orchestration Tool: Apache Airflow (via Docker)
	•	Language: Python
	•	Infrastructure: Docker Compose
	•	Data Source: NYC Taxi Data
	•	Database: PostgreSQL
	•	Cloud: GCP (optional)

⸻

📦 Folder Structure

workflow_orchestration/
│
├── dags/                    # Airflow DAGs (pipelines) live here
│   └── ingest_local.py
│
├── docker-compose.yaml      # Setup for Airflow and supporting services
├── requirements.txt         # Python dependencies
├── airflow.cfg              # (if customized configuration)
│
└── README.md                # Documentation for the orchestration project


⸻

🚀 How to Get Started

1. Clone the repo & navigate to this folder:

git clone https://github.com/brightlili/DTC_data_engineering_zoomcamp
cd workflow_orchestration

2. Start Airflow using Docker Compose:

docker-compose up -d

Airflow UI should be available at: http://localhost:8080
Username: airflow
Password: airflow

⸻

🐍 Running Your DAG
	1.	Add your Python DAG file under the dags/ directory.
	2.	Make sure your DAG is picked up in the Airflow UI.
	3.	Enable and trigger it manually or set up a schedule.

⸻

🔄 Common Commands

# To stop all containers
docker-compose down

# To check logs
docker-compose logs

# To access the Airflow webserver container
docker exec -it <webserver_container_id> bash


⸻

📚 References
	•	Airflow Docs
	•	DataTalksClub Zoomcamp: Week 2