# dummyVim instructions
- Edit Dockerfile if proxy is needed
- add ports on docker run as many as you want
- files available on /home directory linked to /app directory of host
```
cd dummyVim
docker build -t dummyvim_build .
docker run -dit -v $(pwd)/app:/home --name=dummy -p 8888:80 -p 1234:1234 dummyvim_build
docker exec -it dummy bash
```
- start the postgres service
```
service postgresql start
```
- test connection and create database
```
su - postgres
psql CREATE DATABASE dummyvim2
```
- test ruby file
```
ruby /home/text.rb
```
goto: http://localhost:1234/add?a=1&b=4

geh!