=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.46
=end

require 'date'

module AmzSpApi::MerchantFulfillmentApiModel
  # Additional information required to purchase shipping.
  class AdditionalSellerInput
    # The data type of the additional information.
    attr_accessor :data_type

    # The value when the data type is string.
    attr_accessor :value_as_string

    # The value when the data type is boolean.
    attr_accessor :value_as_boolean

    # The value when the data type is integer.
    attr_accessor :value_as_integer

    attr_accessor :value_as_timestamp

    attr_accessor :value_as_address

    attr_accessor :value_as_weight

    attr_accessor :value_as_dimension

    attr_accessor :value_as_currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'data_type' => :'DataType',
        :'value_as_string' => :'ValueAsString',
        :'value_as_boolean' => :'ValueAsBoolean',
        :'value_as_integer' => :'ValueAsInteger',
        :'value_as_timestamp' => :'ValueAsTimestamp',
        :'value_as_address' => :'ValueAsAddress',
        :'value_as_weight' => :'ValueAsWeight',
        :'value_as_dimension' => :'ValueAsDimension',
        :'value_as_currency' => :'ValueAsCurrency'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'data_type' => :'Object',
        :'value_as_string' => :'Object',
        :'value_as_boolean' => :'Object',
        :'value_as_integer' => :'Object',
        :'value_as_timestamp' => :'Object',
        :'value_as_address' => :'Object',
        :'value_as_weight' => :'Object',
        :'value_as_dimension' => :'Object',
        :'value_as_currency' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::MerchantFulfillmentApiModel::AdditionalSellerInput` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::MerchantFulfillmentApiModel::AdditionalSellerInput`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'data_type')
        self.data_type = attributes[:'data_type']
      end

      if attributes.key?(:'value_as_string')
        self.value_as_string = attributes[:'value_as_string']
      end

      if attributes.key?(:'value_as_boolean')
        self.value_as_boolean = attributes[:'value_as_boolean']
      end

      if attributes.key?(:'value_as_integer')
        self.value_as_integer = attributes[:'value_as_integer']
      end

      if attributes.key?(:'value_as_timestamp')
        self.value_as_timestamp = attributes[:'value_as_timestamp']
      end

      if attributes.key?(:'value_as_address')
        self.value_as_address = attributes[:'value_as_address']
      end

      if attributes.key?(:'value_as_weight')
        self.value_as_weight = attributes[:'value_as_weight']
      end

      if attributes.key?(:'value_as_dimension')
        self.value_as_dimension = attributes[:'value_as_dimension']
      end

      if attributes.key?(:'value_as_currency')
        self.value_as_currency = attributes[:'value_as_currency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_type == o.data_type &&
          value_as_string == o.value_as_string &&
          value_as_boolean == o.value_as_boolean &&
          value_as_integer == o.value_as_integer &&
          value_as_timestamp == o.value_as_timestamp &&
          value_as_address == o.value_as_address &&
          value_as_weight == o.value_as_weight &&
          value_as_dimension == o.value_as_dimension &&
          value_as_currency == o.value_as_currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [data_type, value_as_string, value_as_boolean, value_as_integer, value_as_timestamp, value_as_address, value_as_weight, value_as_dimension, value_as_currency].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        AmzSpApi::MerchantFulfillmentApiModel.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
