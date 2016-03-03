build:
	# Base images
	docker build -t mglaman/drupal-commerce:base-5.6-apache base/5.6-apache
	docker build -t mglaman/drupal-commerce:base-5.6-fpm base/5.6-fpm
	docker build -t mglaman/drupal-commerce:base-7-spache base/7-apache
	docker build -t mglaman/drupal-commerce:base-7-fpm base/7-fpm

	# v2
	docker build -t mglaman/drupal-commerce:v2-5.6-apache v2/5.6-apache
	docker build -t mglaman/drupal-commerce:v2-5.6-fpm v2/5.6-fpm
	docker build -t mglaman/drupal-commerce:v2-7-apache v2/7-apache
	docker build -t mglaman/drupal-commerce:v2-7-fpm v2/7-fpm

	# v1
	docker build -t mglaman/drupal-commerce:v1-5.6-apache v1/5.6-apache
	docker build -t mglaman/drupal-commerce:v1-5.6-fpm v1/5.6-fpm
	docker build -t mglaman/drupal-commerce:v1-7-apache v1/7-apache
	docker build -t mglaman/drupal-commerce:v1-7-fpm v1/7-fpm

.PHONY: build
