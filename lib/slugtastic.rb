require "slugtastic/version"
require "slugtastic/model_additions"
require "slugtastic/railtie" if defined? Rails

module Slugtastic
  def self.generate_slug(string)
    return if string.nil?
    string.parameterize
  end
end
