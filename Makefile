up: ## docker-compose up
	docker-compose up -d

down: ## docker-compose down
	docker-compose down

bash: ## enter nginx container by using bash
	docker-compose exec nginx bash

nginx-conf: ## Show nginx conf
	docker-compose exec nginx sh -c 'nginx -T'

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

