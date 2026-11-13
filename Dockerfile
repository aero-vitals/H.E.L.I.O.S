# Multi-stage Dockerfile for H.E.L.I.O.S (Railway, Render & Cloud Platforms)
# Stage 1: Build the React 19 Frontend
FROM node:20-slim AS frontend-builder
WORKDIR /app/frontend

COPY frontend/package*.json ./
RUN npm install

COPY frontend/ ./
RUN npm run build

# Stage 2: Fast, Lightweight Python 3.11 Backend
FROM python:3.11-slim
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Python requirements
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code and data assets
COPY . .

# Copy compiled frontend distribution from Stage 1
COPY --from=frontend-builder /app/frontend/dist ./frontend/dist

EXPOSE 8000
ENV PORT=8000

# Launch FastAPI using Uvicorn
CMD python -m uvicorn backend.app.main:app --host 0.0.0.0 --port $PORT

