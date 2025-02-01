
# Simple DevOps Project with Docker, Kubernetes, and KinD

This project demonstrates a simple DevOps workflow using Docker, Kubernetes, and KinD (Kubernetes in Docker). It includes a static website served by Nginx, deployed to a Kubernetes cluster, and exposed via a LoadBalancer.

## Project Overview

The project consists of the following components:
1. **Dockerfile**: Defines the Nginx Docker image with a custom `index.html`.
2. **index.html**: A simple static HTML file served by Nginx.
3. **nginx-deployment.yml**: Kubernetes Deployment manifest for deploying the Nginx application.
4. **loadbalancer.yml**: Kubernetes Service manifest to expose the Nginx application externally.
5. **script.bash**: A Bash script to automate the build, deployment, and setup process.

## Prerequisites

Before you begin, ensure you have the following installed:
- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **kubectl**: [Install kubectl](https://kubernetes.io/docs/tasks/tools/)
- **KinD (Kubernetes in Docker)**: [Install KinD](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)

## Getting Started

### Step 1: Clone the Repository
```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
```

### Step 2: Build the Docker Image
Build the Docker image using the provided `Dockerfile`:
```bash
docker build -t my-nginx-image:latest .
```

### Step 3: Create a KinD Cluster
Create a local Kubernetes cluster using KinD:
```bash
kind create cluster --name my-cluster
```

### Step 4: Push Docker image to docker registery 
Load the Docker image into the KinD cluster:
```bash
docker login -u <username> -p <password>
docker push my-nginx-image:latest
```

### Step 5: Deploy to Kubernetes
Apply the Kubernetes manifests to deploy the application:
```bash
kubectl apply -f nginx-deployment.yml
kubectl apply -f loadbalancer.yml
```

### Step 6: Verify the Deployment
Check the status of the deployment and services:
```bash
kubectl get pods
kubectl get svc
```

### Step 7: Access the Application
Once the LoadBalancer service is created, access the application using the external IP or port provided by the service.

## Automation Script
You can use the provided `script.bash` to automate the entire process:
```bash
chmod +x script.bash
./script.bash
```
