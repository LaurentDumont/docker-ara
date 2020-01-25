```
#Building the container
make docker-build

#Running the container
make docker-run

#Removing the container
sudo docker rm -f docker-ara

#Connect to postgres
pgcli --host 127.0.0.1 --port 5432 --user ara_user --dbname ara --password
```
