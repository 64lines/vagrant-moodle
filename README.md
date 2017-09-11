# Moodle Virtual Machine using Vagrant and Docker

You should have `vagrant` and `virtualbox` installed to run this virtual machine.

To install and run this virtual machine just execute the next commands:

```bash
vagrant up
vagrant ssh
```

You can access moodle through `localhost/moodle` in your browser.

## Mysql IP address

To get the mysql database ip address you have to access the virtual machine and execute the following commands:

```bash
vagrant ssh
sudo su
docker ps
```

Get the `mysql` container id and execute the following command:

```bash
docker inspect {containerId} | grep IPAddress
```

## Getting into the Moodle container

If you need to access the moodle server to copy the moodle `config.php` installation you can execute the following commands:


```bash
vagrant ssh
sudo su
docker ps
```

Get the `moodle` container id and execute the following command:

```bash
docker exec -i -t {containerId} bash
```

You will be redirected to the `/var/www/html/` server directory.

Enjoy!


