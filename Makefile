VERSION = $(shell git describe --tags --always --dirty)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)
CONTAINER = tc_back

.PHONY: help shell test cover

all: help

help:
	@echo
	@echo "VERSION: $(VERSION)"
	@echo "BRANCH: $(BRANCH)"
	@echo
	@echo "usage: make <command>"
	@echo
	@echo "commands:"
	@echo "    dev              - raise dev environment"
	@echo "    shell            - enter the container"
	@echo "    test             - run tests"
	@echo

db:
	@docker exec $(CONTAINER) php bin/console doctrine:database:create
	@docker exec $(CONTAINER) php bin/console doctrine:schema:create

dev:
	@docker compose up -d

nodev:
	@docker compose down

shell:
	@docker exec -ti $(CONTAINER) bash

test_old:
	@docker exec $(CONTAINER) php bin/phpunit --stop-on-failure --colors=always

unit:
	@docker exec $(CONTAINER) ./vendor/bin/phpunit --stop-on-failure --colors=always

cache-clear:
	@docker exec $(CONTAINER) php bin/console cache:clear

purge:
	@sh clean-all.sh
