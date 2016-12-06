# Acquia Lightning Demo Docker Container
FROM audiojak/lightning:v1-7-apache

# Install Lightning
WORKDIR /var/www/lightning/docroot
RUN drush si lightning --db-url=sqlite://sites/default/files/.ht.sqlite --account-name=admin --account-pass=pass --site-name=Lightning -y
RUN chown www-data sites/default/files/.ht.sqlite