
📡 Streaming Data with Kafka and Spark

This module introduces stream processing, where data is continuously ingested and processed in real-time. You’ll build a Kafka pipeline, produce and consume messages, and process them using Spark Structured Streaming.

⸻

🎯 Learning Objectives
	•	Understand real-time vs batch processing
	•	Set up a Kafka message queue
	•	Produce and consume messages using Python
	•	Process streaming data using Spark
	•	Write streaming outputs to storage (e.g., parquet, BigQuery)

⸻

🛠️ Tools & Stack

Tool	Use Case
Kafka	Distributed event streaming platform
Spark Streaming	Real-time data transformation engine
Docker Compose	Container orchestration
Python + Faust (optional)	Lightweight stream processing
GCS or Local FS	Sink for processed stream data


⸻

📁 Folder Structure

streaming/
├── kafka/
│   ├── docker-compose.yml         # Kafka + Zookeeper services
│   ├── producer.py                # Sends data to Kafka topic
│   └── consumer.py                # Reads data from Kafka topic
├── spark/
│   └── spark_streaming.py         # Structured Streaming with Spark
├── data/
│   └── sample_data.json           # Sample input data
├── requirements.txt
└── README.md


⸻

⚙️ Setup Instructions

1. Start Kafka with Docker Compose

cd kafka
docker-compose up

This spins up:
	•	Kafka broker on port 9092
	•	Zookeeper on port 2181

2. Produce messages

python producer.py

This script sends taxi ride data to Kafka topic rides.

3. Consume messages

python consumer.py

This script listens to rides topic and prints incoming messages.

⸻

⚡ Streaming with Spark

Run the Spark Streaming script (local or Dockerized):

spark-submit spark_streaming.py

This will:
	•	Read from Kafka topic
	•	Parse and transform JSON data
	•	Write results to parquet files

⸻

🔄 Real-World Use Case

Stream NYC taxi ride data → Kafka → Spark → Transformed output in parquet files or BigQuery.

⸻

🧪 Bonus: Optional Enhancements
	•	Use Faust (Python-native stream processor)
	•	Add schema registry with Kafka
	•	Persist to BigQuery or PostgreSQL
	•	Add monitoring with Prometheus + Grafana

⸻

📚 References
	•	Apache Kafka
	•	Spark Structured Streaming
	•	Kafka + Python Guide
	•	Zoomcamp Streaming Module
