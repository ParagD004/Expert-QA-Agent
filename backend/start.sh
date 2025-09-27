#!/bin/bash

# Set default port if not provided
PORT=${PORT:-8000}

echo "Starting server on 0.0.0.0:$PORT"

# Start the FastAPI application
python -m uvicorn app.main:app --host 0.0.0.0 --port $PORT --workers 1