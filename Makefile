export JEKYLL_VERSION?=4

.DEFAULT_GOAL := all pull run

.PHONY: all collect run run_beat run_worker migrate remove release reinstall test up ps down 

all:
	echo "Please choose a make target to run."

pull:
	docker pull jekyll/builder:${JEKYLL_VERSION}

run: pull
	docker run --rm  \
	--volume="${PWD}:/srv/jekyll" \
	-p 4000:4000 \
	-it jekyll/builder:${JEKYLL_VERSION} \
	/bin/sh -c 'gem update bundler && bundler update && bundler install && /usr/jekyll/bin/jekyll build && /usr/jekyll/bin/jekyll serve --watch --incremental'
