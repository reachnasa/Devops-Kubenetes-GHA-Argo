# Go Web App – EKS Deployment with CI/CD (GitHub Actions + Argo CD + Helm)

**Author:** Mohammed Sanaullah

## 📌 Overview

This repository contains a sample **Go-based web application** that is containerized using Docker and deployed to **Amazon EKS**.
The project experiments with a modern CI/CD workflow using:

* **GitHub Actions** for CI (build, test, dockerize, push image)
* **Argo CD** for CD (GitOps-based deployment automation)
* **Helm charts** for Kubernetes packaging and releases

---

## 🚀 Features

* Simple Go web server (REST endpoints)
* Dockerized application
* Automated CI pipelines using GitHub Actions
* Argo CD automated sync to EKS cluster
* Helm chart with values overrides per commit
* Versioned deployments with rollback support

---

## ⚙️ Technologies Used

* **Go** (backend)
* **Docker**
* **Amazon EKS**
* **Helm 3**
* **Argo CD**
* **GitHub Actions**
* **Kubernetes**

---

## 🧪 CI Pipeline (GitHub Actions)

The CI pipeline performs:

* Go module dependencies download
* Unit tests execution
* Docker image build
* Push to Docker Hub
* Tagging & version management

Trigger:

* On pull request
* On push to `main`

---

## 🔁 CD Pipeline (Argo CD)

Argo CD continuously monitors the Git repository for changes in:

* Helm charts
* Values files
* Deployment manifests

Sync Behavior:

* Auto-sync enabled
* Auto-prune enabled
* Self-heal on drift

---

## 🧭 Deployment Flow

1. Developer pushes code → GitHub Actions builds & pushes Docker image
2. Argo CD detects a change in `values.yaml`
3. Argo CD applies changes to the EKS cluster
4. Application updates via rolling deployment

---

## 🧰 Local Development

### Requirements

* Go 1.19+
* Docker
* kubectl
* Helm
* AWS CLI
* Argo CD CLI (optional)

---

## ✅ Status

✅ Experimented and tested end-to-end
✅ Deploys successfully on EKS cluster
✅ CI/CD pipeline fully functional



