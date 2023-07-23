# Sample Python Microservice

This is a simple Python microservice built with Flask that provides basic information at a specific path.

## Table of Contents

- [Description](#description)

- [Getting Started](#getting-started)

  - [Prerequisites](#prerequisites)

  - [Installation](#installation)

  - [Running Locally](#running-locally)

- [Dockerization](#dockerization)

- [Kubernetes Deployment](#kubernetes-deployment)

- [API Documentation](#api-documentation)

## Description

The microservice is a RESTful API built using Flask, a lightweight and easy-to-use Python web framework. It exposes a single endpoint (`/basic-info`) that provides basic information such as name, age, occupation, and location in JSON format.

## Getting Started

### Prerequisites

- Python 3.x

- Flask

- Docker (for containerization)

- Kubernetes (for deployment)

### Installation

1. Clone the repository:

   ```bash

   git clone <https://github.com/rbillon59/sample-python-microservice.git>

   cd sample-python-microservice

   ```

2. Install the required Python dependencies:

   ```bash

   pip install -r requirements.txt

   ```

### Running Locally

To run the microservice locally, execute the following command:

```bash

python app.py

```

The microservice will be available at `http://localhost:5000/basic-info`, and you can access it using a web browser or tools like `curl`.

## Dockerization

To containerize the microservice using Docker, follow these steps:

1. Build the Docker image:

   ```bash

   docker build -t your-docker-registry/your-image-name:latest .

   ```

2. Push the Docker image to your container registry:

   ```bash

   docker push your-docker-registry/your-image-name:latest

   ```

## Kubernetes Deployment

To deploy the microservice on Kubernetes, use the provided `service.yaml` and `microservice-deployment.yaml` files.

1. Deploy the Kubernetes Deployment:

   ```bash

   kubectl apply -f microservice-deployment.yaml

   ```

2. Deploy the Kubernetes Service:

   ```bash

   kubectl apply -f service.yaml

   ```

The microservice will be accessible within the cluster using the ClusterIP Service.

## API Documentation

### Get Basic Information

Retrieves basic information about the user.

- **URL**: `/basic-info`

- **Method**: GET

- **Response Format**: JSON

Example Response:

```json

{

    "name": "John Doe",

    "age": 30,

    "occupation": "Software Engineer",

    "location": "New York"

}
```
