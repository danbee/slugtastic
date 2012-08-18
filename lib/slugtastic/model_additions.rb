module Slugtastic
  module ModelAdditions

    def has_slug name, options = { :from => :title }
      before_validation do |record|
        send("#{name}=", Slugtastic.generate_slug(send(options[:from]))) if send(name).nil? or send(name).blank?
      end
    end

  end
end
