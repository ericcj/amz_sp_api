=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items provides programmatic access to information about items in the Amazon catalog.  For more information, see the [Catalog Items API Use Case Guide](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/use-case-guides/catalog-items-api-use-case-guide/catalog-items-api-use-case-guide_2020-12-01.md).

OpenAPI spec version: 2020-12-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

require 'date'

module AmzSpApi::CatalogItemsApiModel
  # Vendor details associated with an Amazon catalog item for the indicated Amazon marketplace.
  class ItemVendorDetailsByMarketplace
    # Amazon marketplace identifier.
    attr_accessor :marketplace_id

    # Brand code associated with an Amazon catalog item.
    attr_accessor :brand_code

    # Product category associated with an Amazon catalog item.
    attr_accessor :category_code

    # Manufacturer code associated with an Amazon catalog item.
    attr_accessor :manufacturer_code

    # Parent vendor code of the manufacturer code.
    attr_accessor :manufacturer_code_parent

    # Product group associated with an Amazon catalog item.
    attr_accessor :product_group

    # Replenishment category associated with an Amazon catalog item.
    attr_accessor :replenishment_category

    # Product subcategory associated with an Amazon catalog item.
    attr_accessor :subcategory_code

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'marketplace_id' => :'marketplaceId',
        :'brand_code' => :'brandCode',
        :'category_code' => :'categoryCode',
        :'manufacturer_code' => :'manufacturerCode',
        :'manufacturer_code_parent' => :'manufacturerCodeParent',
        :'product_group' => :'productGroup',
        :'replenishment_category' => :'replenishmentCategory',
        :'subcategory_code' => :'subcategoryCode'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'marketplace_id' => :'Object',
        :'brand_code' => :'Object',
        :'category_code' => :'Object',
        :'manufacturer_code' => :'Object',
        :'manufacturer_code_parent' => :'Object',
        :'product_group' => :'Object',
        :'replenishment_category' => :'Object',
        :'subcategory_code' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::CatalogItemsApiModel::ItemVendorDetailsByMarketplace` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::CatalogItemsApiModel::ItemVendorDetailsByMarketplace`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'marketplace_id')
        self.marketplace_id = attributes[:'marketplace_id']
      end

      if attributes.key?(:'brand_code')
        self.brand_code = attributes[:'brand_code']
      end

      if attributes.key?(:'category_code')
        self.category_code = attributes[:'category_code']
      end

      if attributes.key?(:'manufacturer_code')
        self.manufacturer_code = attributes[:'manufacturer_code']
      end

      if attributes.key?(:'manufacturer_code_parent')
        self.manufacturer_code_parent = attributes[:'manufacturer_code_parent']
      end

      if attributes.key?(:'product_group')
        self.product_group = attributes[:'product_group']
      end

      if attributes.key?(:'replenishment_category')
        self.replenishment_category = attributes[:'replenishment_category']
      end

      if attributes.key?(:'subcategory_code')
        self.subcategory_code = attributes[:'subcategory_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @marketplace_id.nil?
        invalid_properties.push('invalid value for "marketplace_id", marketplace_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @marketplace_id.nil?
      replenishment_category_validator = EnumAttributeValidator.new('Object', ['ALLOCATED', 'BASIC_REPLENISHMENT', 'IN_SEASON', 'LIMITED_REPLENISHMENT', 'MANUFACTURER_OUT_OF_STOCK', 'NEW_PRODUCT', 'NON_REPLENISHABLE', 'NON_STOCKUPABLE', 'OBSOLETE', 'PLANNED_REPLENISHMENT'])
      return false unless replenishment_category_validator.valid?(@replenishment_category)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replenishment_category Object to be assigned
    def replenishment_category=(replenishment_category)
      validator = EnumAttributeValidator.new('Object', ['ALLOCATED', 'BASIC_REPLENISHMENT', 'IN_SEASON', 'LIMITED_REPLENISHMENT', 'MANUFACTURER_OUT_OF_STOCK', 'NEW_PRODUCT', 'NON_REPLENISHABLE', 'NON_STOCKUPABLE', 'OBSOLETE', 'PLANNED_REPLENISHMENT'])
      unless validator.valid?(replenishment_category)
        fail ArgumentError, "invalid value for \"replenishment_category\", must be one of #{validator.allowable_values}."
      end
      @replenishment_category = replenishment_category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          marketplace_id == o.marketplace_id &&
          brand_code == o.brand_code &&
          category_code == o.category_code &&
          manufacturer_code == o.manufacturer_code &&
          manufacturer_code_parent == o.manufacturer_code_parent &&
          product_group == o.product_group &&
          replenishment_category == o.replenishment_category &&
          subcategory_code == o.subcategory_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [marketplace_id, brand_code, category_code, manufacturer_code, manufacturer_code_parent, product_group, replenishment_category, subcategory_code].hash
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
        AmzSpApi::CatalogItemsApiModel.const_get(type).build_from_hash(value)
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
