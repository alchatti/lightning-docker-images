# Acquia Lightning Docker Container
FROM audiojak/lightning:base-5.6-apache
MAINTAINER John Kennedy <john.kennedy@acquia.com>

WORKDIR /var/www

# Install Acquia Lightning via acquia/lightning-project
RUN pwd && composer create-project acquia/lightning-project \
 --stability dev \
 --no-interaction \
 lightning

RUN sed -i 's/html/lightning/g' /etc/apache2/sites-enabled/000-default.conf
