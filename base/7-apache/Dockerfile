# Drupal Commerce Docker Container
FROM php:7-apache
MAINTAINER Matt Glaman <nmd.matt@gmail.com>

# Packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libmcrypt-dev \
  libpng12-dev \
  libbz2-dev \
  php-pear \
  curl \
  git \
  unzip \
  && docker-php-ext-install mcrypt zip bz2 pdo_mysql mysqli mbstring opcache \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd

# Install Twig C extension
RUN curl -L -o /root/twig.tar.gz https://github.com/twigphp/Twig/archive/v1.24.0.tar.gz && \
	cd /root && \
	tar -zxvf twig.tgz && \
	cd /root/Twig-1.24.0/ext/twig && \
	/usr/local/bin/phpize && \
	./configure --with-php-config=/usr/local/bin/php-config && \
	make  && \
	make install && \
	cd /root && \
	rm -fr /root/CTwig-1.24.0 && \
	rm -fr /root/twig.tgz && \
  echo "extension=twig.so" > $PHP_INI_DIR/conf.d/twig.ini

# Environmental Variables
ENV COMPOSER_HOME /root/composer

# Add global binary directory to path
ENV PATH $COMPOSER_HOME/vendor/bin:$PATH

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app


CMD ["php", "-a"]
