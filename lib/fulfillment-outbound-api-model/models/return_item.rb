=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.46
=end

require 'date'

module AmzSpApi::FulfillmentOutboundApiModel
  # An item that Amazon accepted for return.
  class ReturnItem
    # An identifier assigned by the seller to the return item.
    attr_accessor :seller_return_item_id

    # The identifier assigned to the item by the seller when the fulfillment order was created.
    attr_accessor :seller_fulfillment_order_item_id

    # The identifier for the shipment that is associated with the return item.
    attr_accessor :amazon_shipment_id

    # The return reason code assigned to the return item by the seller.
    attr_accessor :seller_return_reason_code

    # An optional comment about the return item.
    attr_accessor :return_comment

    # The return reason code that the Amazon fulfillment center assigned to the return item.
    attr_accessor :amazon_return_reason_code

    attr_accessor :status

    attr_accessor :status_changed_date

    # Identifies the return authorization used to return this item. See ReturnAuthorization.
    attr_accessor :return_authorization_id

    attr_accessor :return_received_condition

    # The identifier for the Amazon fulfillment center that processed the return item.
    attr_accessor :fulfillment_center_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'seller_return_item_id' => :'sellerReturnItemId',
        :'seller_fulfillment_order_item_id' => :'sellerFulfillmentOrderItemId',
        :'amazon_shipment_id' => :'amazonShipmentId',
        :'seller_return_reason_code' => :'sellerReturnReasonCode',
        :'return_comment' => :'returnComment',
        :'amazon_return_reason_code' => :'amazonReturnReasonCode',
        :'status' => :'status',
        :'status_changed_date' => :'statusChangedDate',
        :'return_authorization_id' => :'returnAuthorizationId',
        :'return_received_condition' => :'returnReceivedCondition',
        :'fulfillment_center_id' => :'fulfillmentCenterId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'seller_return_item_id' => :'Object',
        :'seller_fulfillment_order_item_id' => :'Object',
        :'amazon_shipment_id' => :'Object',
        :'seller_return_reason_code' => :'Object',
        :'return_comment' => :'Object',
        :'amazon_return_reason_code' => :'Object',
        :'status' => :'Object',
        :'status_changed_date' => :'Object',
        :'return_authorization_id' => :'Object',
        :'return_received_condition' => :'Object',
        :'fulfillment_center_id' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::FulfillmentOutboundApiModel::ReturnItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::FulfillmentOutboundApiModel::ReturnItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'seller_return_item_id')
        self.seller_return_item_id = attributes[:'seller_return_item_id']
      end

      if attributes.key?(:'seller_fulfillment_order_item_id')
        self.seller_fulfillment_order_item_id = attributes[:'seller_fulfillment_order_item_id']
      end

      if attributes.key?(:'amazon_shipment_id')
        self.amazon_shipment_id = attributes[:'amazon_shipment_id']
      end

      if attributes.key?(:'seller_return_reason_code')
        self.seller_return_reason_code = attributes[:'seller_return_reason_code']
      end

      if attributes.key?(:'return_comment')
        self.return_comment = attributes[:'return_comment']
      end

      if attributes.key?(:'amazon_return_reason_code')
        self.amazon_return_reason_code = attributes[:'amazon_return_reason_code']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_changed_date')
        self.status_changed_date = attributes[:'status_changed_date']
      end

      if attributes.key?(:'return_authorization_id')
        self.return_authorization_id = attributes[:'return_authorization_id']
      end

      if attributes.key?(:'return_received_condition')
        self.return_received_condition = attributes[:'return_received_condition']
      end

      if attributes.key?(:'fulfillment_center_id')
        self.fulfillment_center_id = attributes[:'fulfillment_center_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @seller_return_item_id.nil?
        invalid_properties.push('invalid value for "seller_return_item_id", seller_return_item_id cannot be nil.')
      end

      if @seller_fulfillment_order_item_id.nil?
        invalid_properties.push('invalid value for "seller_fulfillment_order_item_id", seller_fulfillment_order_item_id cannot be nil.')
      end

      if @amazon_shipment_id.nil?
        invalid_properties.push('invalid value for "amazon_shipment_id", amazon_shipment_id cannot be nil.')
      end

      if @seller_return_reason_code.nil?
        invalid_properties.push('invalid value for "seller_return_reason_code", seller_return_reason_code cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @status_changed_date.nil?
        invalid_properties.push('invalid value for "status_changed_date", status_changed_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @seller_return_item_id.nil?
      return false if @seller_fulfillment_order_item_id.nil?
      return false if @amazon_shipment_id.nil?
      return false if @seller_return_reason_code.nil?
      return false if @status.nil?
      return false if @status_changed_date.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          seller_return_item_id == o.seller_return_item_id &&
          seller_fulfillment_order_item_id == o.seller_fulfillment_order_item_id &&
          amazon_shipment_id == o.amazon_shipment_id &&
          seller_return_reason_code == o.seller_return_reason_code &&
          return_comment == o.return_comment &&
          amazon_return_reason_code == o.amazon_return_reason_code &&
          status == o.status &&
          status_changed_date == o.status_changed_date &&
          return_authorization_id == o.return_authorization_id &&
          return_received_condition == o.return_received_condition &&
          fulfillment_center_id == o.fulfillment_center_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [seller_return_item_id, seller_fulfillment_order_item_id, amazon_shipment_id, seller_return_reason_code, return_comment, amazon_return_reason_code, status, status_changed_date, return_authorization_id, return_received_condition, fulfillment_center_id].hash
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
        AmzSpApi::FulfillmentOutboundApiModel.const_get(type).build_from_hash(value)
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
