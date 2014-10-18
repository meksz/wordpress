Description

Minimalistic configuration to run Wordpress 4.

Supervisord
Sshd
Apache2
Mysql

Create "shared" folder to attach it to following folders:

/var/lib/mysql
/wordpress

Stop container
docker stop wordpress

Resume container
docker start wordpress

You don't need 'docker run' everytime.

Passwords for wordpress db in Mysql (see scripts/start-up.sh)
DB: wordpress
Userid: wordpress
password: wordpress

Contact me for the issues: meks.bazz@gmail.com


