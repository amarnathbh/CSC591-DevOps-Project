#!/bin/bash -x

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/var/lib/jenkins/.rvm/bin

cp $HOME/gitlab_config/production1/database.yml config/database.yml
cp $HOME/gitlab_config/production1/gitlab.yml config/gitlab.yml

# rsyincying the compiled assets and code 
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress /var/lib/jenkins/workspace/gitlab  git@107.170.40.100:/srv/git/

scp $HOME/gitlab_config/install.sh git@107.170.40.100:~
ssh git@107.170.40.100 /srv/git/install.sh
