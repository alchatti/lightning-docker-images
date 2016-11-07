# Acquia Lightning Docker Container
FROM audiojak/lightning:base-5.6-apache
MAINTAINER John Kennedy <john.kennedy@acquia.com>

# Install Acquia Lightning via acquia/lightning-project
RUN pwd && composer create-project acquia/lightning-project \
 --stability dev \
 --no-interaction \
 .
