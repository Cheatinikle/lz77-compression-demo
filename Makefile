
build:
	@node_modules/.bin/browserify public/index.js -t babelify -r babel-polyfill -o public/bundle.js

start: build
	@bin/start

clean:
	@rm -rf public/bundle.js

.PHONY: build start clean
