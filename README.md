# Moodle Virtual Machine using Vagrant and Docker

You should have `vagrant` and `virtualbox` installed to run this virtual machine.

To install and run this virtual machine just execute the next commands:

```bash
vagrant up
vagrant ssh
```

You can access moodle through `localhost/moodle` in your browser.

To get the mysql database ip address you have to access the virtual machine and execute the following commands:

```bash
vagrant ssh
sudo su
docker ps
```

Get the container id of the mysql container and execute the following command:

```bash
docker inspect {containerId} | grep IPAddress
```

Enjoy!


