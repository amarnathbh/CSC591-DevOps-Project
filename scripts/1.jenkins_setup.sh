apt-get update
apt-get upgrade -y

# Installing basic packages for root user
apt-get install -y build-essential git-core curl htop nano vim python-software-properties

# jenkins installation
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
apt-get update
apt-get install -y jenkins

sudo /etc/init.d/jenkins start

# Add password for jenkins user and in group
passwd jenkins
usermod -a -G sudo jenkins
