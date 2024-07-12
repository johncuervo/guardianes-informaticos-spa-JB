# Guardianes Informáticos SpA - Management Application

## Summary

The "Guardianes Informáticos SpA" application allows managing the availability and assignment of service shifts for engineers  in different applications, according to the contracts established with clients. Each developer can mark their availability by hour and day of the week. The application organizes the shifts based on these availabilities and the conditions of the contract for each monitored service.

## Prerequisites

- Docker - Docker Compose

The application was developed using docker so that all system configurations and versions are the same regardless of the machine it is running on. To run this application you need to have docker and docker-compose installed. If you don't have these installations yet, check the following link:

https://docs.docker.com/engine/install/ubuntu/

## Project Execution

1. Clone the repository:
   ```bash
   git clone https://github.com/johncuervo/guardianes-informaticos-spa-JB.git
   cd guardianes-informaticos-spa-JB
2. Build and run the application using Docker Compose:
    ```bash
   docker compose up --build
3. Open in the browser:

    http://localhost:3000
    

## Components and Integration

### Models

### Relationships
