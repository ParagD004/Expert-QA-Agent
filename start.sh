#!/bin/bash

# Full-stack start script for Render deployment

echo "🚀 Starting full-stack application..."

# Copy built frontend to backend static directory
echo "📁 Setting up static files..."
mkdir -p backend/static
cp -r frontend/.next backend/static/
cp -r frontend/public backend/static/

# Start the FastAPI server from backend directory
echo "🌐 Starting server..."
cd backend
uvicorn app.main:app --host 0.0.0.0 --port $PORT