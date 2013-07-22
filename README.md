# Noodall Redirects

Editable Rewrite Rules for Noodall.

## Getting Started

Add to Gemfile

    gem 'noodall-redirects'

Install the gem

    bundle install

## Configuration

Add the Form Builder routes to `config/routes.rb`

    require 'noodall/redirects/routes'
    Noodall::Redirects::Routes.draw <AppNameConstantGoesHere>::Application

Insert the middleware in config/application.rb

    config.middleware.insert_before(Rack::Lock, Noodall::EditableRewrite)


This project rocks and uses MIT-LICENSE.
