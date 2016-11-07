# Acquia Lightning Docker Container
FROM audiojak/lightning:base-5.6-fpm
MAINTAINER John Kennedy <john.kennedy@acquia.com>

# Install Acquia Lightning via acquia/lightning-project
RUN composer create-project acquia/lightning-project \
 --stability dev \
 --no-interaction \
 .
