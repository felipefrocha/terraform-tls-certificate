.ONESHELL:
.SHELL := /usr/bin/bash
RANDOM := $(shell bash -c 'echo $$RANDOM')
BACKEND?=../../smart-backend
ENV?=dev

# cnf ?= .env
# include $(cnf)
# export $(shell sed 's/=.*//' $(cnf))

# Get the latest tag
TAG=$(shell git describe --tags --abbrev=0)
GIT_COMMIT=$(shell git log -1 --format=%h)

CASE?=case


.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

install:
	@echo Install Terraform docs
	@curl -Lo /tmp/terraform-docs.tar.gz https://github.com/terraform-docs/terraform-docs/releases/download/v0.13.0/terraform-docs-v0.13.0-$$(uname)-amd64.tar.gz 
	@tar -xzf /tmp/terraform-docs.tar.gz -C /tmp/
	@chmod +x /tmp/terraform-docs
	@sudo mv /tmp/terraform-docs /usr/local/bin/terraform-docs
	@echo Installed terraform docs
	
setup: 
	@cat>./.git/hooks/pre-commit<<EOF
	#!/bin/bash
	cd "$$PWD"
	make docs
	git add "./*README.md"
	EOF
	@chmod +x .git/hooks/pre-commit
	@cat>./.git/hooks/post-commit<<EOF
	#!/bin/bash
	cd "$$PWD"
	git add "./*README.md"
	git commit -m "Updating Terraform Modules with terraform-docs"
	EOF
	@chmod +x ./.git/hooks/post-commit

docs:
	@find . -type d -exec bash -c 'terraform-docs md "{}" > "{}"/README.md;' \;
	@find . -name "README.md" -size 1c -type f -delete
	@printf "\n\033[35;1mUpdating the following READMEs with terraform-docs\033[0m\n\n"
	@find . -name "README.md"faz

example:
	@mkdir -p examples/${CASE}
	@touch main.tf variables.tf output.tf