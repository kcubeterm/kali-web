#!/bin/bash
touch "stimuli"
git add .
git commit -m "kk"
git push heroku master
rm stimuli
