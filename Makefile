APP_NAME = esmorcabot

.PHONY: help

build: ## Build container
	docker build -t $(APP_NAME) .
run: ## Run container
	docker run --env-file .env $(APP_NAME)