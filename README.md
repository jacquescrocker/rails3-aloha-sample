Rails3 / Aloha Sample Project
===============================

This project is a simple test of Aloha-Editor integration with Rails3.

It's a dead simple little blog app (similar to the one created in Yehuda's screencast here: http://vimeo.com/10732081)


Howto Install
-------------

Install Bundler:

    gem install bundler --pre

Get the code:

    git clone git://github.com/railsjedi/rails3-aloha-sample.git
    cd rails3-aloha-sample

Bundle (to install dependencies):

    bundle install

Start the Server:

    rails server

Go to http://localhost:3000


Howto Test
----------

Run the Rspecs:

    rspec spec

Run the Cucumber tests:

    cucumber