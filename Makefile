
HUGO := hugo
NPM := npm
STATIC_DIR := static/vendor/
ASSETS_JS_DIR := assets/js/vendor/

install-npm:
	$(NPM) install
update-npm:
	$(NPM) update
build-fontawesome:
	cp -r node_modules/@fortawesome/fontawesome-free/webfonts $(STATIC_DIR)
build-bootstrap:
	mkdir -p $(ASSETS_JS_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(ASSETS_JS_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(ASSETS_JS_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(ASSETS_JS_DIR)
build: build-fontawesome build-bootstrap
	HUGO_ENV=production $(HUGO) --source=exampleSite --themesDir=../..
install: install-npm build-fontawesome build-bootstrap
update: update-npm build-fontawesome build-bootstrap
serve: clean build-fontawesome build-bootstrap
	$(HUGO) server --source=exampleSite --themesDir=../..

######################
generate-githubpages:
	rm -fr docs && HUGO_ENV=production $(HUGO) --baseURL https://marcanuy.github.io/simpleit-hugo-theme/ --source=exampleSite --themesDir=../.. && mv exampleSite/public docs && touch docs/.nojekyll
clean:
	rm -fr exampleSite/public/
