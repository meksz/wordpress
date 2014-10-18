#/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
    
    mysql_install_db
    
    /usr/bin/mysqld_safe &
    sleep 10s

    # userid: admin - password: admin
    echo "GRANT ALL ON *.* TO admin@'%' IDENTIFIED BY 'admin' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

    # wordpress db
    echo "CREATE DATABASE wordpress" | mysql
    echo "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress'" | mysql
    echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost'; FLUSH PRIVILEGES" | mysql 

    chmod -R g+wr /var/lib/mysql
    
    killall mysqld
    sleep 10s
    chown -R mysql.mysql /var/lib/mysql
fi


if [ ! -f /var/www/html/wordpress/wp-config.php ]; then
    WORDPRESS_PATH=/var/www/html/wordpress

    tar zxvf /tmp/latest.tar.gz -C /var/www/html 
    mkdir -p $WORDPRESS_PATH/wp-content/uploads
    
    sed -i -e "s/database_name_here/wordpress/" $WORDPRESS_PATH/wp-config-sample.php
    sed -i -e "s/username_here/wordpress/" $WORDPRESS_PATH/wp-config-sample.php
    sed -i -e "s/password_here/wordpress/" $WORDPRESS_PATH/wp-config-sample.php        
    mv $WORDPRESS_PATH/wp-config-sample.php $WORDPRESS_PATH/wp-config.php
    
    chown -R www-data.www-data /var/www/ 
fi

# -n: Run it in the foreground for debugging
supervisord -n
