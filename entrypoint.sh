#!/usr/bin/env bash

: "${HTTP_HOST:=0.0.0.0"}
: "${HTTP_PORT:=4000"}


bundle exec jekyll serve --host=${HTTP_HOST} --port=${HTTP_PORT}
