# LAMP Stacks Made Easy with Vagrant & Puppet

Building a LAMP stack with Puppet and Vagrant to develop, test, and/or build the worlds next great application should be easy. Use this all inclusive code to quickly kickstart your next application environement.

## Shout outs!
Credit must be given where credit is due. Most of this work was made possible by:
* [jrodriguezjr/puppet-lamp-stack](https://github.com/jrodriguezjr/puppet-lamp-stack).
* [PerishableDave/puppet-lamp-stack](https://github.com/PerishableDave/puppet-lamp-stack).
* [jas0nkim/my-vagrant-puppet-lamp](https://github.com/jas0nkim/my-vagrant-puppet-lamp).

## Prerequisites
* [Vagrant](http://www.vagrantup.com/)
* [Virtual Box](https://www.virtualbox.org/)

## Instructions
0. Insure Vagrant and Virutal Box are installed.
1. Clone this repository.
2. Open up terminal, change directory to the git repo root, and start the vagrant box.

        $ vagrant up

You're all set up. The webserver will now be accessible from http://localhost:8888

## MySQL

See modules/mysql/manifests/init.pp

## System Package include

* apache2 - rewrite mode enabled, having virtual host with config - refer manifest/vagrant_webroot.sample
* php5
* php5-cli
* php5-mysql
* php-pear - installed packages: phpunit and its dependencies
* php5-dev
* php5-gd
* php5-mcrypt
* libapache2-mod-php5
* mysql-server
* curl
* vim
* htop
