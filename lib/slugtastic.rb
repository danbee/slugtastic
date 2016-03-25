require 'slugtastic/version'
require 'slugtastic/model_additions'
require 'slugtastic/railtie' if defined? Rails

module Slugtastic
  def self.generate_slug(string, delimiter = nil)
    return if string.nil?
    slug = string.parameterize
    slug.gsub!('-', delimiter) if delimiter
    slug
  end
end
