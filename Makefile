.PHONY: help
help:
	@printf "%s\n" "Available commands:"
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  make %-15s\033[0m %s\n", $$1, $$2}'

.PHONY: docker
docker: ## Re-Creating and Running Docker Containers For Fox Servers
	cd Fox-Servers && docker-compose up -d --force-recreate && docker-compose build --force-rm

.PHONY: openapi
openapi: ## generate Open API Specification
	docker exec -it fox-server php artisan fox:openapi
