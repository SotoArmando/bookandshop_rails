# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 
    - Ruby-2.7.4
    
* System dependencies
    - postgresql

* Configuration
    - make sure there is a role for your use in postgresql.
    - su - postgres
    - createuser --pwprompt mypguser
    
* Database creation
    - rake db:migrate
    
* Database initialization
    - https://wiki.debian.org/PostgreSql

* How to run the test suite
    - makesure there is a bookandhop_test database
    - su - postgres
    - createdb -O postgres bookandhop_test
    
    - then:
    - rails test


* Deployment instructions https://devcenter.heroku.com/articles/getting-started-with-rails6


