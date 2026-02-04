DOCKER_COMP = docker compose

DOCKER_COMP_EXEC = $(DOCKER_COMP) exec


.PHONY: up down restart logs help

help:
	@echo "Available commands:"
	@echo "  make up       - Start Docker Compose services"
	@echo "  make down     - Stop Docker Compose services"
	@echo "  make restart  - Restart Docker Compose services"
	@echo "  make logs     - View Docker Compose logs"
	@echo "  make build    - Build Docker images"

up:
	$(DOCKER_COMP) up -d
	@echo "Docker Compose services started"

down:
	$(DOCKER_COMP) down
	@echo "Docker Compose services stopped"

restart: down up
	@echo "Docker Compose services restarted"

logs:
	$(DOCKER_COMP) logs -f

build:
	$(DOCKER_COMP) build
	@echo "Docker images built"
