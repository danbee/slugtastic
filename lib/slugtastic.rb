require "slugtastic/version"
require "slugtastic/model_additions"
require "slugtastic/railtie" if defined? Rails

module Slugtastic
  def self.generate_slug(string, delimiter = nil)
    return if string.nil?
    slug = string.parameterize
    if delimiter
      slug.gsub!("-", delimiter)
    end
    slug
  end
end
