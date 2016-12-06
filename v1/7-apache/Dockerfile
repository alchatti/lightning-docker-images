# Acquia Lightning Docker Container
FROM audiojak/lightning:base-7-apache
MAINTAINER John Kennedy <john.kennedy@acquia.com>

WORKDIR /var/www

# Install Acquia Lightning via acquia/lightning-project
RUN composer create-project acquia/lightning-project \
 --stability dev \
 --no-interaction \
 lightning
 
# Install drush
RUN composer --no-interaction global require drush/drush:dev-master

# Apache Configuration
RUN sed -i 's/html/lightning\/docroot/g' /etc/apache2/sites-enabled/000-default.conf

# Drupal install requirements
RUN mkdir lightning/docroot/sites/default/files
RUN chmod 755 lightning/docroot/sites/default/files
RUN chown www-data lightning/docroot/sites/default/files
RUN touch lightning/docroot/sites/default/settings.php
RUN chown www-data lightning/docroot/sites/default/settings.php

# Install Lightning
WORKDIR /var/www/lightning/docroot
#RUN drush site-install --db-url=mysql://mysql:mysql@mysql/data --account-name=admin --account-pass=admin -y
