# Slugtastic [![Build Status](https://secure.travis-ci.org/danbee/slugtastic.png?branch=master)](http://travis-ci.org/danbee/slugtastic)

Simple gem for autogenerating permalink style slugs for your ActiveRecord models.

## Requirements

* Ruby 1.9.2, 1.9.3 or 2.0.0
* Rails 3.1 or higher.

It should work with Rails 3.0 but it hasn't been tested.

## Installation

Add this line to your application's Gemfile:

    gem 'slugtastic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slugtastic

## Usage

Usage is very simple. Just add the following to your model:

    has_slug :slug, :from => :title

This will generate a slug string from the title atrribute and store it in the slug attribute unless the slug already contains a string. The slug is generated pre-validation so you can still use `validates_presence_of :slug`.

There are no extra options at present.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
