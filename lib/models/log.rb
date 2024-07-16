module Models
  class Log
    attr_accessor :id, :created_at, :status, :data

    def initialize(attrs = {})
      attrs.each do |key, value|
        self.send("#{key}=", value) if respond_to?("#{key}=")
      end
    end

    def attributes_hash
      instance_variables.each_with_object({}) do |var, hash|
        hash[var.to_s.delete('@').to_sym] = instance_variable_get(var)
      end
    end

    def data=(data)
      @data = jsonb(data)
    end

    def jsonb(json)
      return if json.blank?
      return json if json.is_a?(String)

      Sequel&.pg_json(json)
    end
  end
end 