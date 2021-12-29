# Japan Dahwa Foundation

## Getting started
First, install ruby on rails
Ruby version 2.7.1

To get started with the app, clone the repo and then install the needed gems:
```
$ bundle install --without production
```
Next, migrate the database:
```
$ rails db:migrate
```
Add bootstrap and javascript (Version: bootstrap(5.1.3)
```
$ yarn add bootstrap@next jquery @popperjs/core
```
Finally, run the test suite to verify that everything is working correctly:
```
$ rails test
```
If the test suite passes, you'll be ready to run the app in a local server:
```
$ rails server
```
