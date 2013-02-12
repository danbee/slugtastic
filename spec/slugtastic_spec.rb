# encoding: utf-8
require 'spec_helper'

describe Slugtastic do
  describe ".generate_slug" do
    it "returns empty if the input string is empty" do
      Slugtastic.generate_slug("").should eq ""
    end

    it "generates a slug from a simple string" do
      Slugtastic.generate_slug("A simple string.").should eq "a-simple-string"
    end

    it "substitutes hyphens for delimiter if specified" do
      Slugtastic.generate_slug("A simple string.", "_").should eq "a_simple_string"
    end

    it "generates a slug from a string with numbers" do
      Slugtastic.generate_slug("Slugtastic was built in 2012.").should eq "slugtastic-was-built-in-2012"
    end

    it "handles strings with hypens in them" do
      Slugtastic.generate_slug("A string - with Hyphens").should eq "a-string-with-hyphens"
    end

    it "handles strings with other characters in them" do
      Slugtastic.generate_slug("A string, with /All sorts!").should eq "a-string-with-all-sorts"
    end

    it "handles basic transliteration" do
      Slugtastic.generate_slug("Un été À la maison.").should eq "un-ete-a-la-maison"
      Slugtastic.generate_slug("Ātri brūna lapsa").should eq "atri-bruna-lapsa"
    end
  end
end
