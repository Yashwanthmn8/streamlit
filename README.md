# Streamlit App on AWS App Runner 🚀

This is a simple Streamlit app designed to be deployed on [AWS App Runner](https://aws.amazon.com/apprunner/) using a Dockerfile.

## 🔧 Local Development

```bash
# Build the image
docker build -t streamlit-apprunner-demo .

# Run the container
docker run -p 8501:8501 streamlit-apprunner-demo
