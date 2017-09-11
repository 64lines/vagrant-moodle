cd /vagrant/mysql
docker build -t mysql . 
docker run -d -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql
