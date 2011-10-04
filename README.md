Slugtastic
==========

Simple gem for autogenerating permalink style slugs for your ActiveRecord models.

## Install

Add this to your Gemfile:

    gem "slugtastic"

And run `bundle install`

## Usage

Usage is very simple. Just add the following to your model:

    has_slug :slug, :from => :title

This will generate a slug string from the title atrribute and store it in the slug attribute unless the slug already contains a string. The slug is generated pre-validation so you can still use `validates_presence_of :slug`.

There are no extra options at present.