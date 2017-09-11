cd /vagrant/moodle
docker build -t moodle . 
docker run -d -p 80:80 moodle
