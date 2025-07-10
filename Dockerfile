FROM python:3.8-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Install system build dependencies required by h5py and numpy
RUN apt-get update && apt-get install -y \
    build-essential \
    libatlas-base-dev \
    libhdf5-dev \
    pkg-config \
    python3-dev \
    libffi-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Upgrade pip and setuptools to avoid build issues
RUN pip install --upgrade pip setuptools wheel

# Install dependencies (including editable mode if using pyproject.toml or setup.py)
RUN pip install --no-cache-dir -e .

# Train the model before running the application
RUN python pipeline/training_pipeline.py

# Expose app port
EXPOSE 5000

CMD ["python", "application.py"]
