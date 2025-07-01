import streamlit as st
import requests
import os

# Secure token read from environment variable
API_URL = "https://api-inference.huggingface.co/models/google/flan-t5-large"
headers = {"Authorization": f"Bearer {os.getenv('HF_API_KEY')}"}

def query(prompt_text):
    response = requests.post(API_URL, headers=headers, json={"inputs": prompt_text})
    return response.json()

# Streamlit Interface
st.title("🚀 Startup Spark")
st.subheader("AI-powered startup idea generator")

topic = st.text_input("🌍 Topic / Industry (e.g. education, mental health):")
audience = st.text_input("👤 Target Audience (e.g. freelancers, busy parents):")

if st.button("✨ Generate Ideas"):
    prompt = f"Generate 3 creative online startup ideas in {topic} for {audience}. Make them digital, AI-powered, and easy to launch."
    with st.spinner("Thinking hard..."):
        result = query(prompt)
        ideas = result[0]['generated_text'] if isinstance(result, list) else str(result)
        st.markdown("### 💡 Startup Ideas")
        st.write(ideas)
# trigger build

<!-- build -->
# ready to launch
