# 🚀 Resume Builder Application

A modern web-based Resume Builder application that allows users to create, customize, and download professional resumes easily.

---

## 📌 Project Overview

The Resume Builder is a user-friendly web application built with a modern frontend stack and deployed using containerization and Kubernetes.

Users can:

* Create resumes with structured templates
* Edit and customize content
* Preview resumes in real-time
* Download resumes in a clean format

---

## 🛠️ Tech Stack

### Frontend

* React.js
* HTML5, CSS3, JavaScript

### Deployment & DevOps

* Docker
* Kubernetes (Minikube)
* Jenkins (CI/CD)

---

## ⚙️ Architecture

The application is deployed inside a Kubernetes cluster running on an EC2 instance.

```
User → Browser → EC2 → Kubernetes → Pod (React App via Nginx)
```

---

## 🐳 Docker Setup

### Build Docker Image

```bash
docker build -t resume-builder .
```

### Run Container Locally

```bash
docker run -p 3000:80 resume-builder
```

---

## ☸️ Kubernetes Deployment

### Apply Deployment

```bash
kubectl apply -f deployment.yaml
```

### Apply Service

```bash
kubectl apply -f service.yaml
```

### Check Resources

```bash
kubectl get pods
kubectl get svc
```

---

## 🌐 Access Application

### Using Port Forward (Recommended)

```bash
kubectl port-forward svc/resume-builder 8080:80 --address 0.0.0.0
```

Open in browser:

```
http://<EC2-PUBLIC-IP>:8080
```

---

## 🔄 CI/CD Pipeline (Jenkins)

* Source Code pulled from GitHub
* Docker image built and pushed to Docker Hub
* Kubernetes deployment updated automatically

---

## 📁 Project Structure

```
resume-builder/
│── public/
│── src/
│── Dockerfile
│── K8s/
  │── deployment.yaml
  │──  service.yaml
│── Jenkinsfile
│── package.json
```

---

## 🚀 Features

* Responsive UI
* Easy resume customization
* Real-time preview
* Containerized deployment
* Kubernetes orchestration
* CI/CD pipeline integration

---

## ⚠️ Known Limitations

* No backend (static frontend only)
* No user authentication
* No persistent storage

---

## 📌 Future Improvements

* Add backend API (Node.js / Django)
* Add database for saving resumes
* Implement user authentication
* Add monitoring and logging
* Improve UI/UX with more templates

---

## 👨‍💻 Author

**Mrutyunjay Masanta**

---

## 📄 License

This project is open-source and available under the MIT License.
