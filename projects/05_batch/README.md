
⚡ Batch Processing with Spark

This module introduces Apache Spark as a scalable batch processing engine. You’ll use PySpark to read large datasets, transform them, and write the results back to storage (GCS or local).

⸻

🧰 Tech Stack

Tool	Purpose
Apache Spark	Distributed batch data processing
PySpark	Python interface to Spark
GCS / Local FS	Source and destination file systems
Docker	Run Spark locally using a containerized environment


⸻

📁 Folder Structure

batch_processing/
│
├── data/                         # Source data (CSV or Parquet)
├── notebooks/                    # Jupyter notebooks for testing
├── spark_script.py               # Main PySpark script
├── Dockerfile                    # Build PySpark Docker image
├── requirements.txt              # Python dependencies (optional)
└── README.md


⸻

⚙️ Setup Instructions

1. Build Docker Image

docker build -t spark-processing .

2. Run the Spark Job

Example (local file system):

docker run -it \
  -v $(pwd)/data:/opt/spark/data \
  spark-processing \
    spark-submit spark_script.py

Or, if you’re reading from a GCS bucket, make sure to:
	•	Mount the service account key file
	•	Set GOOGLE_APPLICATION_CREDENTIALS inside the container

⸻

🧪 Example PySpark Operations
	•	Reading Parquet data:

df = spark.read.parquet("data/yellow_tripdata_2021-01.parquet")


	•	Filtering and transforming:

df_filtered = df.filter(df.passenger_count > 0)
df_result = df_filtered.groupBy("PULocationID").count()


	•	Writing results:

df_result.write.parquet("output/pickup_counts", mode="overwrite")



⸻

📚 References
	•	Apache Spark Docs
	•	PySpark API Reference
	•	DataTalksClub Zoomcamp – Module 5
