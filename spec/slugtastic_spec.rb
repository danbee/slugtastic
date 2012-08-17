# encoding: utf-8
require 'spec_helper'

describe Slugtastic do
  describe ".generate_slug" do
    it "generates a slug from a simple string" do
      Slugtastic.generate_slug("A simple string.").should eq "a_simple_string"
    end

    it "handles strings with hypens in them" do
      Slugtastic.generate_slug("A string - with Hyphens").should eq "a_string_-_with_hyphens"
    end

    it "handles strings with other characters in them" do
      Slugtastic.generate_slug("A string, with /All sorts!").should eq "a_string_with_all_sorts"
    end
  end
end
