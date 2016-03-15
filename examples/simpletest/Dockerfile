# Drupal Commerce Docker Container
FROM mglaman/drupal-commerce:v2-5.6-fpm
MAINTAINER Matt Glaman <nmd.matt@gmail.com>

# Memory Limit
RUN echo "memory_limit=-1" > $PHP_INI_DIR/conf.d/memory-limit.ini && \
    echo "date.timezone=${PHP_TIMEZONE:-UTC}" > $PHP_INI_DIR/conf.d/date_timezone.ini && \
    echo "sendmail_path=/bin/true" > $PHP_INI_DIR/conf.d/sendmail.ini

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]