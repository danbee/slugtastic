require "slugtastic/version"
require "slugtastic/model_additions"

module Slugtastic
  def self.generate_slug(string)
    string.downcase.gsub(/ /, '_').gsub(/[^a-z0-9\-_]/, '') unless string.nil?
  end
end
