build: ## Builds a website using hugo with current config in config.toml
	@hugo
	@touch awesome-api

post: ## Creates a new post using env vars POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean: ## Removes content from dist directory
	@rm -rf dist/*

package: ## Creates a zip file containing binary and the dist/ directory
	@make build
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
	@pwd

lint: ## Lints markdown files
	@markdownlint README.md DEPLOY.md

.SILENT:
help: ## Displays helpful information for Makefile commands
	@cat Makefile | grep '##' | tr -d '##' | head -n -1