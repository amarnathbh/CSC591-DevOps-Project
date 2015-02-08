# These commands should be used with jenkins 
# Use the password set in first scriot 
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
source /var/lib/jenkins/.rvm/scripts/rvm

# Installing Ruby 
rvm install ruby-2.1.5

