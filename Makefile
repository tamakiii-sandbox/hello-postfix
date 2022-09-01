.PHONY: help test

help:
	@cat $(firstword $(MAKEFILE_LIST))

test:
	php -r "mail('hoge@example.com', 'My Subject', 'My Body');"

