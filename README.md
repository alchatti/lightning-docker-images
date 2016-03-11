# Drupal Commerce Docker Images

[Docker](http://docker.com) images to install and run [Drupal Commerce](https://drupalcommerce.org/) v1.x or v2.x.

## Features

* Supports `php-5.6` and `php-7` images either with `apache2` or `fpm` variants.
* Installs Drupal via Composer
  * For v1.x, via `drupal-composer/drupal-project`
  * For v2.x, via `drupalcommerce/project-base`
  
For all variants you will need to link a database container. If using a `fpm` variant, you will need an appropriate web
server variant.


## Installation / Usage

````sh
docker run -d -v $(pwd):/app mglaman/drupal-commerce:v2-5.6-apache --link db_container
````

## Install from source

To run, test and develop the Dockerfiles themselves, you must use the
source directly:

1. Download the source:

    ``` sh
    $ git clone https://mglaman/docker-drupal-commerce.git
    ```

2. Switch to the `composer-docker` directory:

    ``` sh
    $ cd docker-drupal-commerce
    ```

3. Build the containers

    ``` sh
    $ make
    ```