# Acquia Lightning Docker Container
FROM audiojak/lightning:base-7-fpm
MAINTAINER John Kennedy <john.kennedy@acquia.com>

# Install Acquia Lightning via acquia/lightning-project
RUN composer create-project acquia/lightning-project \
 --stability dev \
 --no-interaction \
 lightning

# Install drush
RUN composer --no-interaction global require drush/drush:dev-master

# Drupal install requirements
RUN mkdir lightning/docroot/sites/default/files
RUN chmod 755 lightning/docroot/sites/default/files
RUN chown www-data lightning/docroot/sites/default/files
RUN touch lightning/docroot/sites/default/settings.php
RUN chown www-data lightning/docroot/sites/default/settings.php