.PHONY: help build

help:
	@cat $(firstword $(MAKEFILE_LIST))

build:
	alternatives --set mta /usr/sbin/sendmail.postfix
	newaliases
	service postfix start
