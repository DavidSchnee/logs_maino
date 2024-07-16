class Processor
  extend Resources
  extend Callable

  register 'log_store', Services::Log::Store

  def initialize(payload)
    @resource = payload[:resource]
    @params = payload[:params]
  end

  def execute
    service = Resources::REGISTERED[@resource]
    service.call(@params)
  end
end