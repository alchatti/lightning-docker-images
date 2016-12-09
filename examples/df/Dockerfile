# Acquia DF Docker Container
FROM audiojak/lightning:base-7-apache
MAINTAINER John Kennedy <john.kennedy@acquia.com>
WORKDIR /var/www

# Apache Configuration
RUN sed -i 's/html/demo-2016-12-06\/docroot/g' /etc/apache2/sites-enabled/000-default.conf

# Install mariadb - unfortunately it seems we need to run fat for demo framework
RUN DEBIAN_FRONTEND=noninteractive apt-get install mariadb-server -y

# Download an install archive
ADD http://lightning.acquia.com/sites/default/files/2016-12/acquia-demoframework-d8-archive-2016-12-06-fin.tar_.gz df.tgz
RUN tar -xzf df.tgz

# Import the database
RUN service mysql start && echo "CREATE DATABASE demo" | mysql -uroot && cat demo-2016-12-06/demo_local.sql | mysql -uroot demo

# Drupal DB Settings
RUN echo " \
\$databases['default']['default'] = array ( \
  'database' => 'demo', \
  'username' => 'root', \
  'password' => '', \
  'prefix' => '', \
  'host' => '127.0.0.1', \
  'port' => '3306', \
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql', \
  'driver' => 'mysql', \
);" >> demo-2016-12-06/docroot/sites/default/settings.php

RUN echo "\$settings['hash_salt'] = '_z_XJnV6wFLnxeg4sBIaRjv0Ldw3mTe-1tM0Xma7XWYJt5sToIOMXhI1HpHErBmFkAIECcnRJg';" >> demo-2016-12-06/docroot/sites/default/settings.php

RUN chown -R www-data demo-2016-12-06/docroot/sites/default

# EXPOSE web
EXPOSE 80

CMD ["sh", "-c", "service mysql start; apache2-foreground"]

#WORKDIR /var/www/df/docroot
#RUN ../vendor/drush/drush/drush sql-cli < ../demo_local.sql

# Import DB
#WORKDIR /var/www/df/docroot
#

# Install Acquia DF via acquia/df-project
#RUN composer create-project acquia/df-project \
#--stability dev \
# --no-interaction \
# df

## Clone repo
#RUN git clone https://github.com/acquia/df.git
#
## Composer with https instead of git protocol
#RUN composer config --global github-protocols https
#
## Composer install
#WORKDIR /var/www/df
#RUN composer install --no-interaction
#
## Drupal install requirements
#WORKDIR /var/www/df/docroot
#RUN mkdir sites/default/files
#RUN chmod 755 sites/default/files
#RUN chown www-data sites/default/files
#RUN touch sites/default/settings.php
#RUN chown www-data sites/default/settings.php


# Drush Site Install
#RUN ../vendor/drush/drush/drush si df --db-url=sqlite://sites/default/files/.ht.sqlite --account-name=admin --account-pass=admin --site-name=Demo -y > /dev/null 2>&1
#RUN chown -R www-data sites/default/files
#RUN ../vendor/drush/drush/drush es dfs_fin

# Port mapping

