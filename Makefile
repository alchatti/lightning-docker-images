build:
	# Base images
	docker build -t audiojak/lightning:base-5.6-apache base/5.6-apache
	docker build -t audiojak/lightning:base-5.6-fpm base/5.6-fpm
	docker build -t audiojak/lightning:base-7-apache base/7-apache
	docker build -t audiojak/lightning:base-7-fpm base/7-fpm

	# v1
	docker build -t audiojak/lightning:v1-5.6-apache v1/5.6-apache
	docker build -t audiojak/lightning:v1-5.6-fpm v1/5.6-fpm
	docker build -t audiojak/lightning:v1-7-apache v1/7-apache
	docker build -t audiojak/lightning:v1-7-fpm v1/7-fpm


.PHONY: build
