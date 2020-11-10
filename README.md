![Primo Logo](./public/images/Primo-logo-black(1).png)

An application that is designed to connect skaters to local skate spots around the world 🌎. 

[🛹 Click here 🛹](https://primospots.herokuapp.com) to go to the live build!

# Getting Started 

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites

You must be running Ruby 2.6.1. One way to accomplish this is to use [Ruby Version Manger(rvm)](https://rvm.io/rvm/install).

    rvm install "ruby-2.6.1"
    rvm use 2.6.1

## Installation 

Fork and clone the repository using your prefered method. 

Then load all of the dependencies...

    $ bundle install 

Create a development database 

    $ rake db:create 

    $ rake db:migrate 

Start local server using `rackup` or `shotgun`

    $ rackup 

    $ shotgun 

Use you favorite web browser to navigate to the localhost link printed in the terminal.

# Tech Stack Used 

    - Ruby 2.6.1 
    - Bundler 
    - HTML5
    - CSS3
    - w3.css
    - Sinatra
    - Sqlite - Development Database
    - Postgres - Production Database 
    - Heroku - Deployment Service 

# Contributing

Contributions are always welcome!

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests.

# License

This project is licensed under the [MIT](https://opensource.org/licenses/MIT) License










