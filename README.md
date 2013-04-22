Todo before the workshop
========================

* Download newest version of [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Clone this repo.
* Install ruby 1.9.x (see instructions later in the README)
* Run the following commands while in the same folder as the Gemfile
* ```gem install bundler```
* ```bundle install``` Installs Vagrant
* ```vagrant up``` Try to start up the virtual machine (downloads a large image)
* ```vagrant ssh``` Log in to the VM
* ```vagrant halt``` Stop the virtual machine

If you're able to run ```vagrant ssh``` without errors, you should be ok.

NB: For some PCs you might have to enable virtualization in the BIOS.

The slides:
-----------

http://bekkopen.github.com/devops-kurs

Ruby on Windows
---------------

* Download and run [Ruby Installer](http://rubyinstaller.org/)
* Cross your fingers


Ruby for Mac (with Homebrew)
----------------------------

If you already have rvm installer, do not install rbenv. They do not work together!

```bash
brew update
brew install rbenv
brew install ruby-build
rbenv install 1.9.3-p327
rbenv local 1.9.3-p327
ruby --version            # Check that it show the correct version
```

Ruby for Mac (without Homebrew) or Linux
----------------------------------------

Install either [rbenv](https://github.com/sstephenson/rbenv/#basic-github-checkout) or [rvm](https://rvm.io/)

### rbenv

```bash
# After installing rbenv
rbenv install 1.9.3-p327
rbenv local 1.9.3-p327
ruby --version            # Check that it show the correct version
```


### rvm

```bash
rvm install 1.9.3
rvm use 1.9.3
ruby --version            # Check that it show the correct version
```
