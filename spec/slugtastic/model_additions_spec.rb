# encoding: utf-8
require 'spec_helper'

class Model < SuperModel::Base
  include ActiveModel::Validations::Callbacks
  extend Slugtastic::ModelAdditions
  attr_accessor :slug, :slug_2, :title
  has_slug :slug, from: :title
  has_slug :slug_2, from: :title, delimiter: "_"
end

describe Slugtastic::ModelAdditions do
  it "generates a slug from the title" do
    Model.create!(:title => "A Simple Title").slug.should eq "a-simple-title"
  end

  it "generates a slug from the title with delimiter substitutions" do
    Model.create!(:title => "A Simple Title").slug_2.should eq "a_simple_title"
  end

  it "doesn't regenerate the slug if it already exists" do
    model = Model.create!(:title => "A Simple Title")
    model.slug.should eq "a-simple-title"

    model.title = "A new title"
    model.save
    model.slug.should eq "a-simple-title"
    model.slug_2.should eq "a_simple_title"
  end
end
