#!/bin/bash

cd /web/env/soft/

curl -sSL https://get.rvm.io | bash -s stable
rvm get stable
rvm requirements
rvm install 2.2.1
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem install rails -V

#安装magick
yum install ImageMagick
yum install ImageMagick-devel

#Mysql数据库
CREATE DATABASE redmine CHARACTER SET utf8;
CREATE USER 'redmine'@'localhost' IDENTIFIED BY 'my_password';
GRANT ALL PRIVILEGES ON redmine.* TO 'redmine'@'localhost';

cd /web/env/soft/
tar zxvf redmine-3.0.0.tar.gz
mv redmine-3.0.0 /data/redmine
cd /data/redmine
bundle install

