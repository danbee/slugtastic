# Slugtastic

[![Codeship Status for danbee/slugtastic](https://codeship.com/projects/7a08ef30-0518-0132-d4b6-223503fac7d3/status?branch=master)](https://codeship.com/projects/30797)

[![Gem Version](https://badge.fury.io/rb/slugtastic.svg)](https://badge.fury.io/rb/slugtastic)

Simple gem for autogenerating permalink style slugs for your ActiveRecord
models.

## Requirements

* Ruby 2.2.0+
* Rails 5 or higher.

It will probably work just find with earlier versions--down to Rails 3.1 and Ruby 1.9.3--but it's not tested.

## Installation

Add this line to your application's Gemfile:

    gem "slugtastic"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slugtastic

## Usage

Usage is very simple. Just add the following to your model:

    slug :slug, from: :title

This will generate a slug string from the title attribute and store it in the
slug attribute unless the slug already contains a string. The slug is generated
pre-validation so you can still use `validates_presence_of :slug`.

There are no extra options at present.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
