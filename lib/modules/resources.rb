# frozen_string_literal: true

module Resources
  REGISTERED = {}
  def register(resource, klass)
    REGISTERED[resource] = klass
  end
end
