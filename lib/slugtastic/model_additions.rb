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
    #
    def slug(name, options = {})
      options.reverse_merge!(from: :title)
      before_validation do
        if send(name).nil? || send(name).blank?
          send("#{name}=", Slugtastic.generate_slug(send(options[:from]), options[:delimiter]))
        end
      end
    end

    def has_slug(name, options = {})
      $stderr.puts '[deprecated] Slugtastic: `has_slug` has been renamed `slug` and will likely '\
                   'be removed in a future version.'
      slug(name, options)
    end
  end
end
