module Slugtastic
  module ModelAdditions

    def has_slug name, options = { :from => :title }
      before_validation do |record|
        return if responds_to?(name) and send(name).present?
        send("#{name}=", Slugtastic.generate_slug(send(options[:from])))
      end
    end

  end
end
