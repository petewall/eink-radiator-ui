node_modules/.deps_pulled: package.json yarn.lock
	yarn install
	touch node_modules/.deps_pulled

JAVASCRIPT_SOURCES := $(shell find lib -name '*.js')
lint: $(JAVASCRIPT_SOURCES) node_modules/.deps_pulled
	yarn run eslint $(JAVASCRIPT_SOURCES)
