# encoding: utf-8
require 'spec_helper'

class BaseModel < SuperModel::Base
  include ActiveModel::Validations::Callbacks
  extend Slugtastic::ModelAdditions
end

class Model < BaseModel
  attr_accessor :slug, :name
  has_slug :slug, from: :name
end

class ModelDefault < BaseModel
  attr_accessor :slug, :title
  has_slug :slug
end

class ModelDelimiter < BaseModel
  attr_accessor :slug, :title
  has_slug :slug, delimiter: "_"
end

describe Slugtastic::ModelAdditions do
  it "generates a slug from the name" do
    Model.create!(:name => "A Simple Name").slug.should eq "a-simple-name"
  end

  it "defaults to generating the slug from title" do
    ModelDefault.create!(:title => "A Simple Title").slug.should eq "a-simple-title"
  end

  it "generates a slug from the title with delimiter substitutions" do
    ModelDelimiter.create!(:title => "A Simple Title").slug.should eq "a_simple_title"
  end

  it "doesn't regenerate the slug if it already exists" do
    model = Model.create!(:name => "A Simple Name")
    model.slug.should eq "a-simple-name"

    model.title = "A new title"
    model.save
    model.slug.should eq "a-simple-name"
  end
end
