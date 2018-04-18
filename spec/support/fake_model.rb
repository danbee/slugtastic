require "active_support/core_ext/hash/reverse_merge"
require "active_model"

class FakeModel
  include ActiveModel::Validations::Callbacks

  def initialize(attrs = {})
    attrs.each do |key, value|
      instance_variable_set(:"@#{key}", value)
    end
  end

  def self.create!(attrs)
    new(attrs).save
  end

  def save
    _run_validation_callbacks
    self
  end
end
