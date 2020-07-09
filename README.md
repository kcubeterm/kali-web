# kali-web

Do you want to host your terminal,and can be accessible from web browser

## Requirements:
GIT
Heroku cli
A heroku account
A blank heroku app


## Follow these steps:
Login with heroku

```
heroku login -i
```
fill your heroku credentials 
Now if you don't have blank application available ,create one by 
```
heroku create {appname}
```


```
git clone https://github.com/kcubeterm/kali-web
cd kali-web
```
now open heroku.yml and replace `username` and `password` with any credentials 

And execute install.sh
```bash install.sh```
It ask for your heroku application, fill it and hit enter, after some time, if you don't get any error.

You can view your kali terminal in https://appname.herokuapp.com


