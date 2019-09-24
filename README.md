# dummyVim instructions
- Edit Dockerfile if proxy is needed
- add ports on docker run as many as you want
- files available on /home directory linked to /app directory of host
```
cd dummyVim
docker build -t dummyvim .
docker run -dit -v $(pwd)/app:/home --name=dummy -p 8888:80 -p 5432:5432 seondizon/dummyvim
docker exec -it dummy bash
```
- source rvm and start the postgres service
```
source /usr/local/rvm/scripts/rvm
service postgresql start
```
- test connection and create database
```
service postgresql status
su - postgres
psql CREATE DATABASE dummyvim2
```
- test ruby file
```
ruby /home/text.rb
```
goto: http://localhost:1234/add?a=1&b=4


Helpful sources:
https://bosnadev.com/2015/12/15/allow-remote-connections-postgresql-database-server/
https://www.howtoforge.com/tutorial/ubuntu-ruby-on-rails/
https://github.com/filewatcher/filewatcher
http://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-centos-7

geh!


==== 
pull seondizon/dummy
docker run -dit --name dummy --privileged dummy /usr/sbin/init


systemctl list-unit-files | grep postgres

systemctl enable postgresql-9.4.service

systemctl start postgresql-9.4.servi


