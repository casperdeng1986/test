version: '2'

services:
  truckmanager-fpm-base-7:
    build:
      context: truckmanager-fpm-base-7
      dockerfile: Dockerfile
    image: registry.cn-beijing.aliyuncs.com/g7/truckmanager-fpm-base-7
  truckmanager-php-base-7:
    build:
      context: truckmanager-php-base
      dockerfile: Dockerfile
    image: registry.cn-beijing.aliyuncs.com/g7/truckmanager-php-base
    depends_on:
        - truckmanager-fpm-base-7
