require "slugtastic/version"
require "slugtastic/model_additions"
require "slugtastic/railtie" if defined? Rails

# TODO: iconv will be deprecated in the future.
require 'iconv'

module Slugtastic
  def self.generate_slug(string)
    return if string.nil?
    Iconv.iconv("ASCII//TRANSLIT//IGNORE", "UTF-8", string).join.downcase.gsub(/ /, '_').gsub(/[^a-z0-9\-_]/, '')
  end
end
