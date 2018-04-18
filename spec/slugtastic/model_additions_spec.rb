# encoding: utf-8

require "spec_helper"
require "support/fake_model"

class BaseModel < FakeModel
  extend Slugtastic::ModelAdditions
end

class Model < BaseModel
  attr_accessor :slug, :name
  slug :slug, from: :name
end

class ModelDefault < BaseModel
  attr_accessor :slug, :title
  slug :slug
end

class ModelDelimiter < BaseModel
  attr_accessor :slug, :title
  slug :slug, delimiter: "_"
end

describe Slugtastic::ModelAdditions do
  it "generates a slug from the name" do
    expect(Model.create!(name: "A Simple Name").slug).to eq "a-simple-name"
  end

  it "defaults to generating the slug from title" do
    expect(ModelDefault.create!(title: "A Simple Title").slug)
      .to eq "a-simple-title"
  end

  it "generates a slug from the title with delimiter substitutions" do
    expect(ModelDelimiter.create!(title: "A Simple Title").slug)
      .to eq "a_simple_title"
  end

  it "doesn't regenerate the slug if it already exists" do
    model = Model.create!(name: "A Simple Name")
    expect(model.slug).to eq "a-simple-name"

    model.name = "A new title"
    model.save
    expect(model.slug).to eq "a-simple-name"
  end
end
