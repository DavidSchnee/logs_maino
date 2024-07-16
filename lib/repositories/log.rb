module Repositories
  class Log
    def initialize(repository = DB[:logs], model = Models::Log)
      @repository = repository
      @model      = model
    end

    def find(id)
      attrs = @repository.first(id: id)
      @model.new(attrs)
    end

    def store(attrs)
      id = @repository.insert(@model.new(attrs).attributes_hash)
      find(id)
    end
  end
end