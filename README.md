# 🚀 Hello World App 🌍

Welcome to the *Hello World App*! It's a small Flask app that says "Hello, World!" (or anything else you tell it to), but with some DevOps magic sprinkled on top. It's Dockerized, CI/CD-ified, and Kubernetes-ready — perfect for showing off your cloud-native chops. 🌩️

---

## 📜 Table of Contents
- [Project Overview](#project-overview)
- [Tech Stack](#tech-stack)
- [Setup Instructions](#setup-instructions)
- [Jenkins Pipeline](#jenkins-pipeline)
- [Kubernetes Deployment](#kubernetes-deployment)
- [Contributing](#contributing)
- [License](#license)

---

## 🎯 Project Overview

*Hello World App* is a simple Python Flask application that demonstrates the power of a streamlined CI/CD pipeline. It's designed to:

1. Greet the world with a friendly "Hello, World!" 👋
2. Be built, tested, and deployed via Jenkins and Docker.
3. Be deployed on Kubernetes (because why not overcomplicate things? 😄).

## 💻 Tech Stack

This project uses the following tools and technologies:

- *Python*: Flask for the web app framework.
- *Docker*: For containerizing the app and making it run anywhere (even on Mars, probably).
- *Jenkins*: For automating builds and tests because doing it manually is so 2020.
- *Kubernetes*: The orchestrator of all things containerized, deployed using ArgoCD for ultimate GitOps glory.
- *Traefik*: To route traffic to our app, because "nginx" just felt too mainstream.
- *ArgoCD*: To deploy our app, because who doesn't want to see the changes immediately.

### Prerequisites

Before you get started, you'll need the following knowledge:

- [Docker](https://www.docker.com/get-started)
- [Python 3.x](https://www.python.org/downloads/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Helm](https://helm.sh/docs/intro/install/)

# Infrastructure Deployment using ArgoCD for AKS Cluster

## Principles Applied

1. *Declarative Configuration*: We leveraged the declarative nature of GitOps through ArgoCD, ensuring that the desired state of the cluster is always defined in source control.
2. *Modular Repositories*: Separate repositories were created for Traefik, Jenkins, and the Flask app, facilitating clear division of concerns and modular management of each service.
3. *Single Source of Truth*: Git repositories serve as the single source of truth for the entire infrastructure. This ensures consistency, traceability, and easy rollback to previous configurations if needed.
4. *Automation and Continuous Delivery*: Automated deployments with ArgoCD reduce manual intervention, enhancing speed and reliability.
5. *Scalability and Flexibility*: The architecture is designed to easily scale by adding new microservices or modifying existing ones without disrupting the rest of the system.

## Decision-Making Process

1. *Separation of Services*: 
   - Each service (Traefik, Flask app, Jenkins) is deployed from its own repository, making each component independently manageable. This separation allows for cleaner scaling and maintenance processes.
   - Traefik acts as the ingress controller, simplifying routing and enabling us to expose Jenkins and the Flask app efficiently.

2. *ArgoCD for Continuous Delivery*:
   - ArgoCD was chosen as the preferred GitOps tool due to its seamless integration with Kubernetes and its ability to continuously monitor the Git repositories for any changes.
   - This allowed us to deploy new versions or updates without manual intervention, improving deployment velocity and reducing human error.

3. *AKS (Azure Kubernetes Service)*:
   - AKS was selected because it provides a managed Kubernetes service with built-in tools for security, scalability, and integration with other Azure services. This removes the overhead of manual cluster management while ensuring robust, production-grade infrastructure.

## Unfinished Work and Vision

Due to time constraints, there were some elements left incomplete:
- *Advanced Monitoring & Alerting*: While basic monitoring was set up, a comprehensive monitoring solution (like Prometheus/Grafana) with custom alerts is still pending. This would offer better insights into the performance and health of the services.
- *Improved Security Posture*: Additional security hardening measures, such as Network Policies and fine-grained Role-Based Access Control (RBAC), were planned but not fully implemented.
- *Load Testing & Auto-scaling*: The vision included performance and load testing to configure horizontal pod autoscaling for the Flask app and Jenkins based on real-world traffic.
- *Single source of truth*: Instead of adding the application sources to ArgoCD, a single repo will hold every source, providing us a singe source of truth for our cluster state.
