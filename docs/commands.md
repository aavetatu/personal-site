# Commands Guide

In this document we go through the steps to building, running and deploying a static website
with Docker locally, in a virtual machine and in a VPS.

This file focuses on:

- Containerized builds
- Virtual Machine setup
- VPS deployment
- Docker and Docker Compose commands
- Verification basics

## Local Docker Build

If you want to quickly build and run the application locally you need to start
by building the image

```bash
$ docker build --tag web .
```

After build has completed you run the container

```bash
$ docker run --rm -p 80:80 web:latest
```

And verify the service

```bash
$ curl -I localhost:80
```

Expected response:

```http
HTTP/1.1 200 OK
```

Example output:

```http
HTTP/1.1 200 OK
Vary: rsc, next-router-state-tree, next-router-prefetch, next-router-segment-prefetch, Accept-Encoding
X-Powered-By: Next.js
Content-Type: text/html; charset=utf-8
```

## Docker Compose

Docker Compose can be used when the project requires:

- Easier rebuilds
- Faster rebuilds
- Multiple services
- Standardized local development

You can build and start the app with

```bash
docker compose up --build
```

Or if you have built the app already

```bash
docker compose up
```

## Vagrant Virtual Machine Setup

This method can be used for testing in a more production-like environment and
its useful for:

- CI-like local testing
- Docker testing
- Reproducible environments

Start the VM and connect via SSH

```bash
vagrant up
vagrant ssh 
```

Add user "vagrant" to Docker group

```bash
sudo usermod -aG docker vagrant
```

This allows user "vagrant" to run Docker commands without `sudo` but you might
need to log out and reconnect for group changes to apply

Clone the project repository

```bash
git clone https://github.com/aavetatu/personal-site.git
cd personal-site/
```

Build the Docker image

```bash
$ docker build --tag web .
```

Run the container

```bash
$ docker run --rm -p 80:80 web:latest
```

And verify the service

```bash
curl -I localhost:80
```

Expected response:

```http
HTTP/1.1 200 OK
Server: nginx/1.29.7
```

## VPS Deployment

For deploying the app on a VPS or remote Linux server you start by connecting to
the server

```bash
ssh root@ip.address
```

Update the system

```bash
apt update
apt upgrade -y
```

Install required packages

```bash
apt install -y curl git docker docker-compose
```

Clone the project repository

```bash
git clone https://github.com/aavetatu/personal-site.git
cd personal-site/
```

Build the image

```bash
docker build --tag web .
```
Run the container

```bash
docker run --rm -p 80:80 web:latest
```
