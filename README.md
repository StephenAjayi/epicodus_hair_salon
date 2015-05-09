Authored By:
Stephen Ajayi

What it Does:
connects to psql data base and connects clients and stylists.

Setup/Instillation
run bundle to get required gems

# psql
username=# CREATE DATABASE hair_salon;
username=# \c hair_salon;
hair_salon=# CREATE TABLE stylists (id serial PRIMARY KEY, name varchar);
hair_salon=# CREATE TABLE clients (id serial PRIMARY KEY, name varchar, stylist_id int);
hair_salon=# CREATE DATABASE hair_salon_test WITH TEMPLATE hair_salon;

License
MIT license

known Bugs:
I am getting a wierd run error I haven't been able to isolate and spent quite a long time trying to fix. When i run rspec, my program explodes and there is a message that I may have encountered a bug in the Ruby Interpreter or extension library. Will find and hopefully finish tomorrow.
