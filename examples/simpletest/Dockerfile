# Acquia Lightning Docker Container
FROM audiojak/lightning:v1-5.6-fpm
MAINTAINER John Kennedy <john.kennedy@acquia.com>

# Memory Limit
RUN echo "memory_limit=-1" > $PHP_INI_DIR/conf.d/memory-limit.ini && \
    echo "date.timezone=${PHP_TIMEZONE:-UTC}" > $PHP_INI_DIR/conf.d/date_timezone.ini && \
    echo "sendmail_path=/bin/true" > $PHP_INI_DIR/conf.d/sendmail.ini

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]