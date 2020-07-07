#!/bin/bash
echo "provide your heroku app name"
read appname
rm -rf .git
git init

heroku git:remote -a $appname
heroku stack:set container
bash trigger.sh

