FROM jordotech/ipsum_php_base:latest
RUN echo -e "\nalias drush='/var/www/vendor/drush/drush/drush'" >> /home/.bashrc
RUN echo -e "\nalias drupal='/var/www/vendor/drupal/console/bin/drupal'" >> /home/.bashrc
RUN composer global require hirak/prestissimo
RUN /usr/local/bin/docker-entrypoint
# Run PHP-FPM on container start.
CMD ["/usr/sbin/php-fpm", "-F", "-R"]
