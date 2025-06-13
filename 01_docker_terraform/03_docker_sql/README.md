
# 🐳 Docker + PostgreSQL: NYC Yellow Taxi Data

This module demonstrates how to set up a **PostgreSQL database using Docker**, ingest **NYC Yellow Taxi trip data**, and run SQL transformations and queries.

> Based on [DataTalksClub's Data Engineering Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp)

---

## 📁 Folder Contents

- `docker-compose.yaml` — define and run multi-container Docker apps
- `ingest_data.py` — Python script to load CSV into PostgreSQL
- `Dockerfile` — Docker image for ingestion script
- `ny_taxi_postgres_data/` — PostgreSQL volume
- `screenshots/` — CLI/pgAdmin screenshots (optional)

---

## 🚀 Getting Started

### 📦 Download Dataset

```bash
wget https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz



⸻

🐘 Running PostgreSQL in Docker

📥 Basic Container

docker run -it \
  -e POSTGRES_USER=root \
  -e POSTGRES_PASSWORD=root \
  -e POSTGRES_DB=ny_taxi \
  -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres:13

	💡 Tip: use docker-compose for convenience and networking.

⸻

🧪 Connecting to PostgreSQL

🔧 With pgcli

pgcli -h localhost -p 5432 -u root -d ny_taxi

	pgcli is an interactive Postgres CLI with auto-completion.

⸻

🛠️ Ingesting Data via Python

python ingest_data.py \
  --user=root \
  --password=root \
  --host=localhost \
  --port=5432 \
  --db=ny_taxi \
  --table_name=yellow_taxi_trips \
  --url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz



⸻

🐳 Build Docker Image for Ingestion

docker build -t taxi_ingest:v001 .

🚚 Run the Docker Ingest Job

docker run -it \
  --network=pg-network \
  taxi_ingest:v001 \
    --user=root \
    --password=root \
    --host=pg-database \
    --port=5432 \
    --db=ny_taxi \
    --table_name=yellow_taxi_trips \
    --url=<dataset_url>



⸻

🖥️ pgAdmin (Optional GUI)

docker run -it \
  -e PGADMIN_DEFAULT_EMAIL=admin@admin.com \
  -e PGADMIN_DEFAULT_PASSWORD=root \
  -p 8080:80 \
  --network=pg-network \
  dpage/pgadmin4

Access GUI at: http://localhost:8080

⸻

🧠 SQL Sample Query

SELECT
  tpep_pickup_datetime,
  tpep_dropoff_datetime,
  passenger_count,
  total_amount
FROM yellow_taxi_trips
LIMIT 10;



⸻

📚 References
	•	NYC Taxi Data Dictionary
	•	Original Source: Zoomcamp Notes

⸻
