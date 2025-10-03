#!/bin/bash

# Full-stack build script for Render deployment

echo "🚀 Starting full-stack build..."

# Install Node.js dependencies and build frontend
echo "📦 Building frontend..."
cd frontend
npm ci
npm run build
cd ..

# Install Python dependencies
echo "🐍 Installing Python dependencies..."
pip install -r backend/requirements.txt

echo "✅ Build completed successfully!"