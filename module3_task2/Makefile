build:		## create a new destination of the page in a directory called 'dist'
	hugo --destination ./dist

clean:		## delete the directory 'dist' with files or subdirectories
	rm -rf ./dist

post:		## first remove the md file in the content, next create the new post with the random name and aspects
	@rm -rf content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's+title.*+title: "$(POST_TITLE)"+g' content/posts/$(POST_NAME).md


package: build ## Produces a file awesome-website.zip, containing the binary awesome-api and the directory dist/ directory
	zip -r awesome-website.zip dist

lint:	## Lint markdown
	markdownlint README.md DEPLOY.md

unit-tests: ## Run unit tests

integration-tests: ## Run integrations test

validate: ## Validate

help: 		## show help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
