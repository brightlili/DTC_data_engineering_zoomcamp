folder Structure

2_docker_sql/
├── README.md                         # Documentation for this week's module
├── docker-compose.yml               # Multi-container setup (if used)
├── Dockerfile                       # Custom Postgres image (optional)
├── ingest_data.py                   # Python script to load CSV into Postgres
├── load_data.ipynb                  # Optional Jupyter notebook
├── yellow_tripdata_2021-01.csv      # Sample dataset (or script to download it)
├── taxi_zone_lookup.csv             # Lookup table
├── sql_queries.sql                  # Practice SQL scripts
├── screenshots/                     # Folder to store command-line or UI screenshots
├── notes/
│   ├── docker_commands.md           # Docker basics and CLI references
│   └── sql_tips.md                  # Postgres queries, joins, etc.



⸻

📝 Sample README.md for 2_docker_sql/

# 🐳 2 – Docker + PostgreSQL (Data Engineering Zoomcamp)

This module demonstrates how to use Docker to spin up a PostgreSQL database, load real-world datasets, and query them using SQL – a fundamental skill for any data engineer.

---

## 📦 Key Concepts

- Running PostgreSQL in a Docker container
- Writing SQL to explore datasets
- Automating data ingestion using Python + SQLAlchemy
- Volume mounting and Docker networking
- Querying and exploring relational data

---

## 🚀 Technologies Used

| Tool         | Purpose                          |
|--------------|----------------------------------|
| Docker       | Run Postgres DB in a container   |
| PostgreSQL   | Relational database              |
| SQLAlchemy   | Python ORM for Postgres          |
| Pandas       | Read and transform CSVs          |
| pgAdmin (opt)| Visual DB interface              |

---

## 🧱 Project Structure

2_docker_sql/

├── ingest_data.py         # Python to load CSV into Postgres

├── docker-compose.yml     # Spins up Postgres container

├── yellow_tripdata.csv    # Sample trip data

├── README.md              # You’re here

---

## 🔧 Setup Instructions

### 1. Clone this repo
```bash
git clone https://github.com/brightlili/DTC_data_engineering_zoomcamp.git
cd DTC_data_engineering_zoomcamp/01_docker_terraform/02_docker_sql

2. Run PostgreSQL in Docker

docker run -it \
  -e POSTGRES_USER=root \
  -e POSTGRES_PASSWORD=root \
  -e POSTGRES_DB=ny_taxi \
  -p 5432:5432 \
  postgres:13

Or with Docker Compose:

docker-compose up



⸻

📥 Load the Data

python ingest_data.py \
  --user=root \
  --password=root \
  --host=localhost \
  --port=5432 \
  --db=ny_taxi \
  --table_name=yellow_taxi_data \
  --csv_file=yellow_tripdata_2021-01.csv



⸻

🔍 Sample SQL Queries

SELECT COUNT(*) FROM yellow_taxi_data;

SELECT passenger_count, AVG(total_amount)
FROM yellow_taxi_data
GROUP BY passenger_count
ORDER BY AVG(total_amount) DESC;



⸻

📸 Screenshots

📂 Stored in screenshots/
Includes Docker setup, SQL queries, and schema previews.

⸻

🧠 Notes & Tips
	•	See notes/docker_commands.md for quick Docker references
	•	See notes/sql_tips.md for useful SQL syntax & tricks