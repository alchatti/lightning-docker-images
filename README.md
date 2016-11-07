# Lightning Docker Images

[Docker](http://docker.com) images to install and run [lightning](https://lightning.acquia.com/).

## Features

* Supports `php-5.6` and `php-7` images either with `apache2` or `fpm` variants.
* Installs Drupal via Composer via `acquia/lightning-project`
  
For all variants you will need to link a database container. If using a `fpm` variant, you will need an appropriate web
server variant.


## Installation / Usage

````sh
docker run -d -v $(pwd):/app audiojak/lightning:v1-apache --link db_container
````

## Install from source

To run, test and develop the Dockerfiles themselves, you must use the
source directly:

1. Download the source:

    ``` sh
    $ git clone https://github.com/audiojak/lightning-docker-images
    ```

2. Switch to the `composer-docker` directory:

    ``` sh
    $ cd lightning-docker-images
    ```

3. Build the containers

    ``` sh
    $ make
    ```
