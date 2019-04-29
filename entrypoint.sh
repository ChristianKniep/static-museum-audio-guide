#!/usr/bin/env bash

: "${HTTP_HOST:=0.0.0.0}"
: "${HTTP_PORT:=4000}"
: "${JEKYLL_EXTRA_OPTS}"


echo ">> bundle exec jekyll serve --host=${HTTP_HOST} --port=${HTTP_PORT} ${JEKYLL_EXTRA_OPTS}"
bundle exec jekyll serve --host=${HTTP_HOST} --port=${HTTP_PORT} ${JEKYLL_EXTRA_OPTS}
