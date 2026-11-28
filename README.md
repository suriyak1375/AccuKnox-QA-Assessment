
# AccuKnox QA Trainee Assessment

## Project Overview

This repository contains my practical assessment work for the AccuKnox QA Trainee role.

The project covers Docker containerization, GitHub Actions CI/CD, Kubernetes configuration, and Bash scripting.

## Technologies Used

- Docker
- Kubernetes
- GitHub Actions
- Bash Shell Scripting
- Linux
- Docker Hub

## Problem Statement 1: Wisecow Application

### Project Files

- `wisecow.sh` - Wisecow application script
- `Dockerfile` - Docker image configuration
- `k8s.yaml` - Kubernetes Deployment and Service
- `.github/workflows/docker-build.yml` - Docker build and push workflow

### Docker Hub Image

`suriyakalimuthu/wisecow:latest`

### Docker Commands

Build the image:

```bash
docker build -t suriyakalimuthu/wisecow:latest .
```

Run the container:

```bash
docker run -p 4499:4499 suriyakalimuthu/wisecow:latest
```

### Kubernetes Deployment

Apply Kubernetes configuration:

```bash
kubectl apply -f k8s.yaml
```

Check deployment:

```bash
kubectl get deployments
kubectl get pods
kubectl get services
```

## Problem Statement 2: Bash Scripts

### 1. System Health Monitoring

File: `system_health.sh`

Features:
- CPU usage monitoring
- Memory usage monitoring
- Disk usage monitoring
- Running process count
- Alerts when CPU, memory, or disk usage exceeds 80%

Run:

```bash
bash system_health.sh
```

### 2. Application Health Checker

File: `application_health.sh`

Features:
- Checks application availability
- Retrieves HTTP status code
- Displays UP or DOWN status

Run:

```bash
bash application_health.sh
```

## Automated Testing

GitHub Actions workflow:

`.github/workflows/test-bash-scripts.yml`

The workflow runs both Bash scripts on an Ubuntu Linux runner whenever changes are pushed to the main branch.

## Docker CI Workflow

`.github/workflows/docker-build.yml`

This workflow builds the Docker image and pushes it to Docker Hub when changes are pushed to the main branch.

## Project Status

- Docker image build and Docker Hub push: Completed
- Bash scripts added: Completed
- GitHub Actions Bash workflow: Successful
- Kubernetes deployment: Completed
- Kubernetes Service verification: Completed
- Application HTTP test: Successful (HTTP 200 OK)
- HTTPS endpoint test: Verified (HTTP/2 200; certificate validation not performed)
- Continuous deployment: Pending

## Author

GitHub: https://github.com/suriyak1375

