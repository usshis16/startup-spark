# 🚀 Startup Spark

**Fuel your next venture with AI-validated startup ideas.**  
*Built with Streamlit + Docker. Deployed on Hugging Face Spaces.*

[![Hugging Face](https://img.shields.io/badge/Demo-Live%20App-blue)](https://huggingface.co/spaces/leana001/munna)
[![Streamlit](https://img.shields.io/badge/UI-Built%20with%20Streamlit-ff4b4b)](https://streamlit.io/)
[![Docker](https://img.shields.io/badge/Containerized-Docker-blue)](https://www.docker.com/)
[![Made by Ifte](https://img.shields.io/badge/Created%20by-Ifte-green)](https://github.com/usshis16)

---

## ✨ What is Startup Spark?

Startup Spark is an AI-powered idea generator for:
- 🧠 Founders seeking inspiration
- 👩‍🏫 Educators teaching innovation
- 🧪 Builders prototyping fast, validated concepts

Just enter a **topic** and **target audience**, and it returns 3 creative, launchable startup ideas—powered by prompt-engineered inference from Google’s Flan-T5 model.

---

## 🔍 Features

- 🪄 Zero-input UX: just describe your focus area
- ⚡ Fast, prompt-driven idea generation
- 🧠 Backed by a transformer-based LLM (Flan-T5 Large)
- 🌐 Fully containerized + live on Hugging Face Spaces

---

## 💻 Live Demo

👉 Try it here: [Startup Spark (Hugging Face)](https://huggingface.co/spaces/leana001/munna)

![Screenshot](https://your-screenshot-url-if-you-upload-one.png)

---

## 🧰 Tech Stack

| Layer         | Stack                     |
|---------------|---------------------------|
| Frontend UI   | Streamlit                 |
| Backend Model | Hugging Face Inference API (`google/flan-t5-large`) |
| Container     | Docker (`python:3.10-slim`) |
| Hosting       | Hugging Face Spaces       |

---
## 🚀 Run Locally

Clone the repo and build the Docker container:


```bash
git clone https://github.com/usshis16/startup-spark
cd startup-spark
docker build -t startup-spark .
docker run -p 7860:7860 startup-spark
```
---

## 💬 Connect

Got feedback or want to collaborate?  
Let’s build together: [@usshis16](https://github.com/usshis16)
