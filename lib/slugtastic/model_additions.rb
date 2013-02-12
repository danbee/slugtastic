module Slugtastic
  module ModelAdditions

    # To generate a slug from another value, call <tt>has_slug</tt> in any
    # ActiveRecord model and pass in the name of the slug attribute.
    # By default the slug will be generated from the <tt>title</tt> attribute, but
    # you can specify by adding <tt>:from => {attribute}</tt>.
    #
    #   class Article < ActiveRecord::Base
    #     has_slug :slug, :from => :title
    #   end
    def has_slug name, options = { :from => :title }
      before_validation do |record|
        send("#{name}=", Slugtastic.generate_slug(send(options[:from]), options[:delimiter])) if send(name).nil? or send(name).blank?
      end
    end

  end
end
