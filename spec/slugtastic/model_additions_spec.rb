# encoding: utf-8
require 'spec_helper'

class Model < SuperModel::Base
  include ActiveModel::Validations::Callbacks
  extend Slugtastic::ModelAdditions
  attr_accessor :slug, :title
  has_slug :slug, from: :title
end

describe Slugtastic::ModelAdditions do
  it "generates a slug from the title" do
    Model.create!(:title => "A Simple Title").slug.should eq "a_simple_title"
  end

  it "doesn't regenerate the slug if it already exists" do
    model = Model.create!(:title => "A Simple Title")
    model.slug.should eq "a_simple_title"

    model.title = "A new title"
    model.save
    model.slug.should eq "a_simple_title"
  end
end
