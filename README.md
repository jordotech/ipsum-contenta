## Firing up your local

You'll need to create a `.env` file in the project root with the following values:

```
MYSQL_DATABASE=contenta
MYSQL_USER=contenta
MYSQL_PASSWORD=contenta
MYSQL_ALLOW_EMPTY_PASSWORD=yes
MYSQL_ROOT_PASSWORD=root
MYSQL_HOSTNAME=database
MYSQL_PORT=3306
SITE_MAIL=admin@localhost
ACCOUNT_MAIL=admin@localhost
SITE_NAME='Contenta CMS Demo'
ACCOUNT_NAME=admin
ACCOUNT_PASS=admin
COMPOSER_MEMORY_LIMIT=-1
```

Then fire up docker compose:

`docker-compose up -d`

## The pm2 container...
While not necessary, this creates a blazingly fast node.js endpoint with the same data served at 
http://localhost:3000/api/

Otherwise, the slower api endpoint can be found from the php container at http://localhost:8181/api/

## Local DB

If firing up the stack for the first time, the db container will automatically import `/mariadb-init/initial.sql`.

It can be beneficial to create multiple clones of the db but you'll have to jump through a few hoops.

- ssh into the db container `docker exec -it contenta_db bash`
- get into the mysql cli and create a bunch of empty dbs 

```
mysql -uroot -proot
create database c1;
```

- import initial.sql into each of those

`mysql -uroot -proot c1 < /docker-entrypoint-initdb.d/initial.sql`

- grant privileges to contenta mysql user

`GRANT ALL PRIVILEGES ON *.* TO 'contenta'@'%' WITH GRANT OPTION;`



