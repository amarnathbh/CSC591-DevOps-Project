# These commands should be used with jenkins 
# Use the password set in first script 
su jenkins
# Installing the required packages like cmake need for compilation
sudo apt-get install -y libcurl4-openssl-dev libexpat1-dev gettext libz-dev libssl-dev build-essential
sudo apt-get install libicu-dev
sudo apt-get install libgit2-0
sudo apt-get install cmake
sudo apt-get install libkrb5-dev

# Installing Mysql 
sudo apt-get install -y mysql-client mysql-server libmysqlclient-dev

# Installing RVM
curl -L https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm

# Installing Ruby 
rvm install ruby-2.1.5

# Installing Node 
sudo apt-get install nodejs

# Installing redis-server
sudo apt-get install redis-server

# Installing phantom.js
cd /usr/local/share/
sudo wget http://phantomjs.googlecode.com/files/phantomjs-1.8.1-linux-x86_64.tar.bz2
sudo tar jxvf phantomjs-1.8.1-linux-x86_64.tar.bz2
sudo ln -s /usr/local/share/phantomjs-1.8.1-linux-x86_64/ /usr/local/share/phantomjs
sudo ln -s /usr/local/share/phantomjs/bin/phantomjs /usr/local/bin/phantomjs%

