#!/bin/bash

wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

heroku git:remote -a $HEROKU_APP
git push heroku $GIT_BRANCH:master
heroku run rake db:migrate
sleep 5 # sleep for 5 seconds to wait for dynos
heroku restart
