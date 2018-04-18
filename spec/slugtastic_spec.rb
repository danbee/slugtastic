# encoding: utf-8

require "spec_helper"

describe Slugtastic do
  describe ".generate_slug" do
    it "returns empty if the input string is empty" do
      expect(Slugtastic.generate_slug("")).to eq ""
    end

    it "generates a slug from a simple string" do
      expect(Slugtastic.generate_slug("A simple string."))
        .to eq "a-simple-string"
    end

    it "substitutes hyphens for delimiter if specified" do
      expect(Slugtastic.generate_slug("A simple string.", "_"))
        .to eq "a_simple_string"
    end

    it "generates a slug from a string with numbers" do
      expect(Slugtastic.generate_slug("Slugtastic was built in 2012."))
        .to eq "slugtastic-was-built-in-2012"
    end

    it "handles strings with hypens in them" do
      expect(Slugtastic.generate_slug("A string - with Hyphens"))
        .to eq "a-string-with-hyphens"
    end

    it "handles strings with other characters in them" do
      expect(Slugtastic.generate_slug("A string, with /All sorts!"))
        .to eq "a-string-with-all-sorts"
    end

    it "handles basic transliteration" do
      expect(Slugtastic.generate_slug("Un été À la maison."))
        .to eq "un-ete-a-la-maison"
      expect(Slugtastic.generate_slug("Ātri brūna lapsa"))
        .to eq "atri-bruna-lapsa"
    end
  end
end
