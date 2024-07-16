module Services
  module Log
    class Store
      extend Callable
      attr_accessor :params, :repository

      def initialize(params, repository = Repositories::Log.new)
        @params = params
        @repository = repository
      end

      def execute
        repository.store(params)
      end
    end
  end
end