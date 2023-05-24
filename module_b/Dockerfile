FROM python:3.10-slim

# Install make and system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy and install Python dependencies
COPY pyproject.toml poetry.lock ./
RUN pip install poetry && poetry install --no-root --no-dev

# Copy the rest of the code
COPY src /app/src
COPY Makefile main.py ./

# Set environment variables
ENV PYTHONPATH=/app

# Run the application
CMD ["make", "run"]
