
HUGO := hugo
NPM := npm
STATIC_DIR := static/
ASSETS_JS_DIR := assets/js/vendor/
ASSETS_SCSS_DIR := assets/sass/vendor/

install-npm:
	$(NPM) install
	 npm install -g postcss-cli #needs to install globally 
update-npm:
	$(NPM) update
build-fontawesome:
	mkdir -p $(ASSETS_SCSS_DIR)/fontawesome
	cp -r node_modules/@fortawesome/fontawesome-free/webfonts $(STATIC_DIR)
	cp node_modules/@fortawesome/fontawesome-free/scss/* $(ASSETS_SCSS_DIR)/fontawesome
build-bootstrap:
	mkdir -p $(ASSETS_SCSS_DIR)/bootstrap/
	cp node_modules/jquery/dist/jquery.min.js $(ASSETS_JS_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(ASSETS_JS_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(ASSETS_JS_DIR)
	cp -r node_modules/bootstrap/scss/* $(ASSETS_SCSS_DIR)/bootstrap/
build: build-fontawesome build-bootstrap
	HUGO_ENV=production $(HUGO) --source=exampleSite --themesDir=../..
	rm -fr resources/
	mv exampleSite/resources/ .
install: install-npm build-fontawesome build-bootstrap
	mkdir -p $(ASSETS_JS_DIR)
	mkdir -p $(ASSETS_SCSS_DIR)
update: update-npm build-fontawesome build-bootstrap
serve: clean build-fontawesome build-bootstrap
	$(HUGO) server --source=exampleSite --themesDir=../..
	rm -fr resources/
	mv exampleSite/resources/ .

######################
generate-githubpages:
	rm -fr docs && HUGO_ENV=production $(HUGO) --baseURL https://marcanuy.github.io/simpleit-hugo-theme/ --source=exampleSite --themesDir=../.. --config ../config-github-docs.toml && mv exampleSite/public docs && touch docs/.nojekyll
clean:
	rm -fr exampleSite/public/
