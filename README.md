# 🧠 Anime Recommendation System 🎌🚀

An end-to-end scalable and modular **Anime Recommendation System**, built with modern machine learning and MLOps practices. This project leverages **GCP, DVC, Comet-ML, Jenkins, and Kubernetes** for a fully automated, reproducible, and cloud-deployable recommendation pipeline.

---

## 📌 Project Overview

This system recommends anime titles to users based on their preferences, using both **content-based** and **collaborative filtering** techniques. Built with modularity, scalability, and reproducibility in mind — it's production-ready with CI/CD pipelines and cloud deployment via Kubernetes.

---

## 🔧 Workflow

Here's a breakdown of the complete ML system pipeline:

### ✅ 1. **Database Setup**
- Anime datasets (MyAnimeList, Kitsu, etc.)
- Stored in **GCP Bucket** for scalable cloud access.
- DVC integration with a secondary GCP bucket for versioning.

### ✅ 2. **Project Setup**
- Organized using `src/`, `notebooks/`, `pipeline/`, and `configs/`.
- Virtual environment setup with `requirements.txt` and `environment.yml`.

### ✅ 3. **Selective Data Ingestion**
- Downloads only **relevant columns and rows** based on filters (e.g. genre, popularity).
- Stored as raw files and versioned using DVC.

### ✅ 4. **Model Architecture**
- Content-Based Filtering: TF-IDF + Cosine Similarity
- Collaborative Filtering: Matrix Factorization or SVD
- Hybrid Approach: Weighted ensemble of both
- Optionally supports BERT embeddings for descriptions (for NLP enhancement)

### ✅ 5. **Data Preprocessing**
- Handling nulls, duplicates, and outliers
- Feature engineering: genre vectors, user interaction matrix
- Label encoding and TF-IDF processing

### ✅ 6. **Jupyter Notebook Testing**
- Exploratory Data Analysis (EDA)
- Model evaluation on top-N recommendations
- Visualizations of similarities & clusters

### ✅ 7. **Model Training**
- Training recommender models locally or on GCP VM
- Metrics: Precision@K, Recall@K, NDCG@K
- Tuned with grid/optuna for optimal performance

### ✅ 8. **Experiment Tracking**
- **Comet-ML** for online experiment tracking
  - Metrics, hyperparameters, model weights
  - Live dashboard for team collaboration

### ✅ 9. **Training Pipeline**
- Automated pipelines using `train.py` + modular configs
- MLFlow-compatible architecture for extensibility

### ✅ 10. **Data & Code Versioning**
- **DVC** used for:
  - Raw/processed data version control (linked to GCP bucket)
  - Model artifact tracking
- **GitHub** used for:
  - Code versioning
  - Collaboration and branching

### ✅ 11. **Prediction Helpers**
- Inference pipeline in `predict.py`
- Handles user profile inputs (e.g. watch history, genre prefs)
- Outputs top-N anime recommendations

### ✅ 12. **User Application**
- Built with **Streamlit** or **Flask** UI
- Lets users:
  - Rate anime
  - Get personalized recommendations
  - Filter by genre, rating, etc.

### ✅ 13. **CI/CD Deployment**
- CI pipeline: Automated testing and linting via **Jenkins**
- CD pipeline: Dockerized and deployed on **Kubernetes cluster**
- Monitors, retrains, and redeploys based on performance drift

---

## 🚀 Tech Stack

| Layer              | Tools Used                           |
|--------------------|--------------------------------------|
| Language           | Python 3.10+                         |
| Data Storage       | GCP Bucket, CSV                      |
| MLOps              | DVC, Comet-ML, GitHub                |
| Model Training     | Scikit-Learn, Surprise, PyTorch      |
| Experiment Tracking| Comet-ML                             |
| Versioning         | Git, DVC                             |
| Web App            | Streamlit / Flask                    |
| Deployment         | Docker, Jenkins, Kubernetes          |

---

## 📁 Project Structure

---

### 🌐 Deployment with Jenkins & Kubernetes
* Jenkins handles build → test → deploy stages.

* Dockerfile is used to containerize the model + app.

* Deployment pipeline pushes container to GCP/Kubernetes cluster.

* Autoscaling and live endpoint enabled for predictions.

---

📊 Comet-ML Dashboard
Track experiments, logs, hyperparameters and more via:
🔗 Comet-ML Project Link: "https://...."




