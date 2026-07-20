# HiddenFlags

HiddenFlags is a production-inspired social platform built to explore distributed system architecture using ASP.NET Core microservices, gRPC, RabbitMQ, Docker, and modern DevOps practices. What started as a portfolio project has evolved into a continuously developed platform that serves real users.


## Project Summary

| Category | Value |
|----------|------:|
| Architecture | Microservices |
| Services | 11 |
| Databases | MySQL, Redis |
| Message Broker | RabbitMQ |
| Frontend | Vue 3, Nginx |
| Backend | ASP.NET Core 8 |
| Deployment | Docker, Docker Compose, SSH |
| Reverse Proxy | Caddy |
| Monitoring | Grafana + Loki + Tempo |
| Cloud | Linux VM |


<p align="center">
  <img src="https://raw.githubusercontent.com/nokecdev/docs/main/assets/images/hiddenflags/landing_hf.png" width="900" alt="HiddenFlags Landing">
</p>

> A modern social platform built with a distributed microservice architecture, designed to explore scalable backend development, cloud infrastructure, and real-world software engineering practices.

---

## Overview

HiddenFlags started as a personal portfolio project, intended to showcase my backend development skills.

As the project evolved, it gradually became much more than a portfolio. New ideas, features, and architectural improvements transformed it into a full-scale social platform where the primary goal shifted from simply "building a website" to designing production-like distributed systems.

The project focuses on:

- scalable backend architecture
- microservices
- cloud deployment
- asynchronous communication
- real-time features
- observability
- security
- DevOps

Today HiddenFlags consists of multiple independent services communicating through gRPC, RabbitMQ and HTTP APIs while running inside Docker containers behind a reverse proxy.

---

# Features

- User authentication
- Email verification
- JWT authentication
- User profiles
- Friends system
- Private and group messaging
- Notifications
- Posts & comments
- Image uploads
- Admin dashboard
- Real-time communication
- Distributed background jobs
- Centralized API Gateway
- Service discovery
- Monitoring & logging

---

# Technology Stack

## Backend

- ASP.NET Core 8
- Entity Framework Core
- gRPC
- SignalR
- RabbitMQ
- Redis
- MySQL

## Frontend

- Vue 3
- TypeScript
- Pinia
- Vuetify

## Infrastructure

- Docker
- Docker Compose
- Caddy Reverse Proxy
- Nginx
- Cloudflare
- Linux VM
- GitHub Actions

## Observability

- OpenTelemetry
- Grafana
- Loki
- Tempo

---

# Architecture

![Architectural Diagram of HiddenFlags](https://raw.githubusercontent.com/nokecdev/docs/main/assets/images/hiddenflags/diagram.png)


The platform follows a microservice architecture where each service owns its own responsibility and data.

Synchronous communication is handled through gRPC while asynchronous events are published through RabbitMQ.

The Gateway API serves as the single public entry point for clients.

---

# Timeline

## 2024

Started as a portfolio project using a monolithic architecture.

---

## April 2025

Migrated the application to a distributed microservice architecture.

This was a complete redesign that separated responsibilities into independent services.

---

## October 2025

First cloud deployment on Google Cloud Platform.

Services were deployed using Docker with managed cloud resources.

Automated CI/CD pipeline with Cloud Build, later with Github Actions.

---

## February 2026

Introduced a centralized Gateway API.

Instead of exposing every service individually, all client communication now goes through a single API Gateway using gRPC internally.

This significantly simplified routing, authentication and service communication.

---

## April 2026

Started migrating from Google Cloud Platform to a self-managed Linux Virtual Machine.

The migration reduced infrastructure costs while providing full control over networking, reverse proxy configuration and deployment.

---

## July 2026

Public registration was opened.

The platform is now hosted on a Linux VM where a reverse proxy serves multiple domains over HTTPS while routing requests to individual services.

---

# Infrastructure

Current deployment includes

- Linux Virtual Machine
- Docker Compose
- Reverse Proxy
- Automatic HTTPS
- Multiple domains
- Centralized Gateway
- Internal Docker networking
- Redis caching
- RabbitMQ messaging
- Distributed databases

---

# Security

- JWT Authentication
- Refresh Tokens
- Password hashing
- HTTPS everywhere
- Cloudflare protection
- Email verification
- Role-based authorization
- Secure cookies where applicable

---

# Future Plans

- Kubernetes deployment
- Horizontal scaling
- Service discovery improvements
- Distributed tracing enhancements
- Better search
- Mobile application
- AI-powered moderation
- Recommendation engine
- Separate Easter Egg System

---

# Gallery

## Dashboard

![Dashboard](https://raw.githubusercontent.com/nokecdev/docs/main/assets/images/hiddenflags/a2.png)

---


## Feed view on mobile

![Feed](https://raw.githubusercontent.com/nokecdev/docs/main/assets/images/hiddenflags/a4.png)

---


# Key takeaways

HiddenFlags has been my largest software engineering project to date.

Throughout its development I gained practical experience in:

- designing distributed systems
- microservice communication
- cloud deployment
- reverse proxy configuration
- CI/CD
- observability
- containerization
- performance optimization
- database design
- authentication & authorization
- production debugging

The project continues to evolve as I explore new technologies and architectural patterns.
