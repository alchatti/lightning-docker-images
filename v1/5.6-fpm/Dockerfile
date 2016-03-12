# Drupal Commerce Docker Container
FROM mglaman/drupal-commerce:base-5.6-fpm
MAINTAINER Matt Glaman <nmd.matt@gmail.com>

# Install Drupal via drupal-composer/drupal-project
RUN composer create-project drupal-composer/drupal-project:7.x-dev \
 --stability dev \
 --no-interaction \
 .

# Require Drupal Commerce
RUN composer require drupal/commerce:7.1.*
