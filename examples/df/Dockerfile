# Acquia DF Docker Container
FROM audiojak/lightning:base-7-apache
MAINTAINER John Kennedy <john.kennedy@acquia.com>

WORKDIR /var/www

# Install Acquia DF via acquia/df-project
RUN composer create-project acquia/df-project \
 --stability dev \
 --no-interaction \
 df
 
# Install drush
RUN composer --no-interaction global require drush/drush:dev-master

# Apache Configuration
RUN sed -i 's/html/df\/docroot/g' /etc/apache2/sites-enabled/000-default.conf

# Drupal install requirements
RUN mkdir df/docroot/sites/default/files
RUN chmod 755 df/docroot/sites/default/files
RUN chown www-data df/docroot/sites/default/files
RUN touch df/docroot/sites/default/settings.php
RUN chown www-data df/docroot/sites/default/settings.php

# Install DF
WORKDIR /var/www/df/docroot
RUN drush si df --db-url=sqlite://sites/default/files/.ht.sqlite --account-name=admin --account-pass=admin --site-name=Demo -y
RUN chown www-data sites/default/files/.ht.sqlite

# Port mapping
EXPOSE 80
