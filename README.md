## Firing up your local
`docker-compose up -d`

## The pm2 container...
While not necessary, this creates a blazingly fast node.js endpoint with the same data served at 
http://localhost:3000/api/

Otherwise, the slower api endpoint can be found from the php container at http://localhost:8181/api/

As of 10/23 the nodejs container is not staying alive so we start it in sleep mode and manually start pm2 from within
the container

ssh into the container and run `npm start` or run `docker exec -it contentajs ./node_modules/.bin/pm2 start`

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



