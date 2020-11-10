![Primo Logo](./public/images/Primo-logo-black(1).png)

An application that is designed to connect skaters to local skate spots around the world. 

# Prerequisites

You must be running Ruby 2.6.1. One way to accomplish this is to use [Ruby Version Manger(rvm)] https://rvm.io/rvm/install

    rvm install "ruby-2.6.1"
    rvm use 2.6.1

# Installation 

Fork and clone the repository using your prefered method. 

Then load all of the dependencies...

    $ bundle install 

Create a development database 

    $ rake db:create 

    $ rake db:migrate 

Test out locally using `rackup` or `shotgun` servers

    $ rackup 

    $ shotgun 

# Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

# License

This project is licensed under the [MIT] https://opensource.org/licenses/MIT License










