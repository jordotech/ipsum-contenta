# Firing up your local
`docker-compose up -d`

as of 10/23 the nodejs container is not staying alive so we start it in sleep mode

ssh into the container and run `npm start`

or run `docker exec -it contentajs ./node_modules/.bin/pm2 start`

The proxy api is available at http://localhost:3000/

The web interface is available at http://localhost:8181/
