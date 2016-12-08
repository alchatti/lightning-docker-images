# Acquia DF Docker Container
FROM audiojak/lightning:base-7-apache
MAINTAINER John Kennedy <john.kennedy@acquia.com>
WORKDIR /var/www

# Install Acquia DF via acquia/df-project
#RUN composer create-project acquia/df-project \
#--stability dev \
# --no-interaction \
# df

# Apache Configuration
RUN sed -i 's/html/df\/docroot/g' /etc/apache2/sites-enabled/000-default.conf

# Clone repo
RUN git clone https://github.com/acquia/df.git

# Composer with https instead of git protocol
RUN composer config --global github-protocols https

# Composer install
WORKDIR /var/www/df
RUN composer install --no-interaction

# Drupal install requirements
WORKDIR /var/www/df/docroot
RUN mkdir sites/default/files
RUN chmod 755 sites/default/files
RUN chown www-data sites/default/files
RUN touch sites/default/settings.php
RUN chown www-data sites/default/settings.php

# Drush Site Install
RUN ../vendor/drush/drush/drush si df --db-url=sqlite://sites/default/files/.ht.sqlite --account-name=admin --account-pass=admin --site-name=Demo -y  > /dev/null 2>&1
RUN chown -R www-data sites/default/files
#RUN ../vendor/drush/drush/drush es dfs_fin

# Port mapping
EXPOSE 80
