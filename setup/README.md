Setup
=====

This show how we created the environment for the workshop.

YOU DO NOT NEED TO DO THESE STEPS


Setup of new virtual box
========================

This is how we built the box used in the excercises.

* Download newest version of [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Install ruby 1.9.x (Recommending to use either [rbenv](https://github.com/sstephenson/rbenv/) or [rvm](https://rvm.io/)
* ```gem install bundler```
* ```bundle install``` Installs vagrant and veewee
* Do not touch anything ;)
* ```vagrant basebox build 'devops-kurs'``` Builds the virtual machine
* ```vagrant basebox export 'devops-kurs'``` Exports the box to use it with vagrant
* Upload ```devops-kurs.box``` to Amazon
* ```vagrant add 'devops-kurs' 'devops-kurs.box'```
* ```vagrant init 'devops-kurs'```


