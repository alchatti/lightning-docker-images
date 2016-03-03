# Drupal Commerce Docker Container
FROM mglaman/drupal-commerce:base-7-fpm
MAINTAINER Matt Glaman <nmd.matt@gmail.com>

# Install Drupal Commerce 2.x via drupalcommerce/project-base
RUN composer create-project drupalcommerce/project-base \
 --stability dev \
 --no-interaction \
 .
