# Azure-App-Containerization 🐳

This repository demonstrates the process of containerizing a Python-based API using Docker and preparing it for deployment on Azure. This project is part of my professional roadmap toward becoming a DevOps Engineer.

## 🚀 Project Overview 

The application is a lightweight FastAPI service that serves as a foundation for cloud-native architectures. It illustrates key concepts of modern infrastructure:

- **OS-Level Virtualization:** Packaging an application with all its dependencies into a single image.
- **Network Isolation:** Mapping ports from the host machine to the container environment.
- **Portability:** Ensuring the code runs identically across any environment (Development, Staging, or Production).

## 🛠️ Tech Stack

- **Language:** Python 3.11+
- **Framework:** FastAPI
- **Containerization:** Docker & Docker Compose
- **Cloud Platform:** Azure

## 💻 Local Setup & Development

### 1. Prerequisites

- Python installed
- Docker Desktop running
- Azure CLI installed

### 2. Environment Configuration

Create and activate a virtual environment to manage dependencies locally:
```bash
python -m venv .venv
source .venv/Scripts/activate  # For Git Bash/Linux
# or
.\.venv\Scripts\activate       # For PowerShell
```

### 3. Build the Container

Run the following command in the root directory to build your image:
```bash
docker build -t azure-python-app .
```

### 4. Run with Docker Compose

To start the application with predefined networking and volumes:
```bash
docker-compose up -d
```

The API will be available at `http://localhost:8000`.

## ☁️ Azure Deployment Steps

Once local testing is successful, the image is ready to be pushed to the Azure Container Registry (ACR):

1. Login to Azure: `az login`
2. Create the ACR Instance: `az acr create --resource-group <YourResourceGroup> --name <YourRegistryName> --sku Basic`
3. Authenticate Docker with ACR: `az acr login --name <YourRegistryName>`
4. Tag the Image for the Cloud: `docker tag azure-python-app <YourRegistryName>.azurecr.io/python-api:v1`
5. Push to Azure: `docker push <YourRegistryName>.azurecr.io/python-api:v1`

## 📊 Monitoring & Debugging

To view real-time logs of the running container:
```bash
docker logs -f my-running-app
```

## Why This Project?

As a student of Systems Analysis and Development, I am applying these containerization principles to my Academic Monitoring System project to ensure high availability and scalability in cloud environments.
