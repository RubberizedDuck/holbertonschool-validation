build-docker: ## Builds a docker image called awesome:build
	@docker build -t awesome:build -f build/Dockerfile .

build: ## Builds a website
	@docker run awesome:build sh -c "hugo; touch awesome-api; ls ./dist/*"

post: ## Creates a new post using env vars POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean:	## Removes all files from dist directory
	@rm -rf dist/*

docker-clean:	## Removes content from dist directory within docker container
	@docker run awesome:build sh -c "hugo; make clean"

docker-package:	## Runs the package make command in a docker container
	@docker run awesome:build sh -c "hugo; make package"

package: ## Creates a zip file containing binary and the dist/ directory
	@zip awesome-website.zip dist/index.html

unit-tests: ## Tests various make commands
	@make package
	@make clean
	@touch coverage-units.out

integration-tests: ## Stats server and checks local host URL
	@hugo
	@touch coverage-integrations.out
	@ls dist/

validate: ## Checks current working directory
	@docker run awesome:build sh -c "pwd"

lint:	## Lints markdown files
	@markdownlint README.md DEPLOY.md

docker-lint: ## Lints markdown files in docker
	@docker run awesome:build sh -c "make lint"

.SILENT:
help: ## Displays helpful information for Makefile commands
	@cat Makefile | grep '##' | tr -d '##' | head