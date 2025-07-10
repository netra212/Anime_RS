# 🎌 Anime Recommendation System (End-to-End MLOps Project)

An end-to-end scalable and modular **Anime Recommendation System**, built with modern machine learning and MLOps practices. This project leverages **GCP, DVC, Comet-ML, Jenkins, and Kubernetes** for a fully automated, reproducible, and cloud-deployable recommendation pipeline.

---

## 📌 Project Overview

This system recommends anime titles to users based on their preferences, using both **content-based** and **collaborative filtering** techniques. Built with modularity, scalability, and reproducibility in mind — it's production-ready with CI/CD pipelines and cloud deployment via Kubernetes.

--- 

An AI-powered **Anime Recommendation System** built with a full MLOps lifecycle integrating:
- ✅ CI/CD with Jenkins
- ✅ Model Tracking with Comet-ML
- ✅ Data Versioning with DVC
- ✅ Containerization with Docker & Kubernetes
- ✅ Cloud deployment using GCP (Google Cloud Platform)

> 📊 **Final Validation Loss:** 0.777  
> 📉 **MAE:** 0.372  
> 🔧 **Optimizer:** Adam | **Loss:** Binary Crossentropy

---

## 📁 Project Structure

```bash
.
├── .dvc/                        # DVC metadata
├── artifacts/                  # Datasets, models, checkpoints
│   ├── raw/processed/model/...
├── CI-CD-Deployment-Stages/
│   └── ci_cd_stages.txt        # Stages for Jenkins pipeline
├── config/
│   ├── config.yaml             # Model & training configuration
│   ├── paths_config.py
├── custom_jenkins/
│   └── Dockerfile              # Jenkins agent with dependencies
├── notebook/
│   └── anime.ipynb             # EDA + experiment exploration
├── pipeline/
│   ├── training_pipeline.py
│   └── prediction_pipeline.py
├── src/
│   ├── base_model.py
│   ├── model_training.py
│   ├── data_ingestion.py
│   ├── data_preprocessing.py
│   ├── custom_exception.py
│   └── logger.py
├── utils/
│   ├── helpers.py
│   └── common_functions.py
├── static/                     # CSS files for frontend
├── templates/                  # HTML templates
│   └── index.html              # Frontend UI
├── Dockerfile                  # API/Model Docker setup
├── deployment.yaml             # Kubernetes deployment config
├── Jenkinsfile                 # Jenkins CI/CD pipeline
├── requirements.txt
├── setup.py
├── application.py              # FastAPI/Flask app
└── README.md
```

---

🚀 Project Highlights

Component	    Description
Frameworks	  TensorFlow, NumPy, Pandas
MLOps         Tools	Comet-ML, DVC, Jenkins, Docker, Kubernetes, GCP
Frontend	    HTML5, CSS3
Model	        Custom-built Neural Network
Embedding     Size	128
Loss	        Binary Crossentropy
Optimizer	    Adam
Metrics	      MAE, MSE
Deployment	  GCP Kubernetes Cluster

---

📈 Comet-ML Metrics Snapshot
Metric	          Value
train_loss	      0.7638
val_loss	        0.7773
batch_mae	        0.3723
batch_mse	        0.1840
learning_rate	    0.000034

---
---
📈 Metrics & Performance

* Validation Loss: 0.777

* MAE: 0.372

* MSE: 0.184

* Learning Rate: 3.4e-5

* Epoch Duration: ~4.46 sec
---

🧪 How to Run Locally

# 1. Clone the repo
git clone https://github.com/netra212/anime-rs.git
cd anime-rs

# 2. Create and activate virtualenv
python -m venv animeenv
source animeenv/bin/activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Trigger training pipeline
python pipeline/training_pipeline.py

# 5. Launch API (Flask/FastAPI)
python application.py


---

📦 CI/CD Pipeline

graph TD;
    A [Git Commit] --> B[Jenkins CI/CD];
    B --> C[Run Unit Tests];
    C --> D[Build Docker Image];
    D --> E[Push to GCR];
    E --> F[Deploy to Kubernetes Cluster];


---

📂 Data Versioning (via DVC)
Tracks raw → processed → model stages.

All .dvc files track data pipelines and metrics.

Remote storage: GCP Bucket
```
dvc init
dvc add artifacts/raw
dvc push -r myremote
```

---
🌐 Deployment (GCP + Kubernetes)
* Built image using custom Dockerfile.

* Deployed via deployment.yaml on GKE cluster.

* Configured autoscaling and persistent storage.

* Exposed through external load balancer.

---
📌 Model Architecture Summary
```
Model:
  Embedding Size: 128
  Optimizer: Adam
  Loss: binary_crossentropy
  Metrics: [mae, mse]
```

---
📍 Tech Stack Summary
Category	            Tools Used
Data Versioning	      DVC + GCP Bucket
CI/CD	                Jenkins + Docker + Kubernetes
Tracking	            Comet-ML
Model Dev	            TensorFlow, Python
Deployment	          GCP GKE
UI	                  HTML5 + CSS

---