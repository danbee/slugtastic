module Slugtastic
  def self.included(base)
    base.extend ClassMethods
  end
  
  def generate_slug(string)
    string.downcase.gsub(/ /, '_').gsub(/[^a-z0-9\-_]/, '') unless string.nil?
  end

  module ClassMethods

    def has_slug(name, options = { :from => :title })
      before_validation do |record|
        self[name] = generate_slug(self[options[:from]]) if self[name].nil? or self[name].empty?
      end
    end

  end
end

class ActiveRecord::Base
  include Slugtastic
end