# Acquia DF Docker Container
FROM audiojak/lightning:base-7-apache
MAINTAINER John Kennedy <john.kennedy@acquia.com>
WORKDIR /var/www

# Install Acquia DF via acquia/df-project
#RUN composer create-project acquia/df-project \
#--stability dev \
# --no-interaction \
# df
 
# Install drush
#RUN composer --no-interaction global require drush/drush:dev-master

# Apache Configuration
RUN sed -i 's/html/df\/docroot/g' /etc/apache2/sites-enabled/000-default.conf

# Clone repo
RUN git clone https://github.com/acquia/df.git

# Composer with https instead of git protocol
RUN composer config --global github-protocols https

# Composer install
WORKDIR /var/www/df
RUN composer install --no-interaction

# Install Drupal
WORKDIR /var/www/df/docroot
RUN mkdir sites/default/files
RUN chmod 755 sites/default/files
RUN chown www-data sites/default/files
RUN touch sites/default/settings.php
RUN chown www-data sites/default/settings.php
# Drupal install requirements


# Drush Site Install
#RUN drush si df --db-url=sqlite://sites/default/files/.ht.sqlite --account-name=admin --account-pass=admin --site-name=Demo -y
#RUN drush es dfs_fin





# Install DF
#WORKDIR /var/www/df/docroot
#RUN drush si df --db-url=sqlite://sites/default/files/.ht.sqlite --account-name=admin --account-pass=admin --site-name=Demo -y
#RUN chown www-data sites/default/files/.ht.sqlite

# Port mapping
#EXPOSE 80
