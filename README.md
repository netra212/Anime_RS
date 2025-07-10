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
