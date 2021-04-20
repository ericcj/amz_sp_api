require 'amz_sp_api_version'
require 'sp_api_client'
require 'sp_configuration'

module AmzSpApi
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi.configure do |config|
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(SpConfiguration.default)
      else
        SpConfiguration.default
      end
    end

    def encrypt_feed(feed_content, feed_document_response_payload)
      cipher = feed_cipher(feed_document_response_payload, encrypt: true)
      cipher.update(feed_content) + cipher.final
    end

    def decrypt_and_inflate_feed(ciphertext, feed_document_response_payload)
      cipher = feed_cipher(feed_document_response_payload, encrypt: false)

      compression = feed_document_response_payload[:compressionAlgorithm]
      raise "unknown compressionAlgorithm #{compression}" if compression && compression != "GZIP"

      result = cipher.update(ciphertext) + cipher.final
      result = Zlib::Inflate.inflate(result) if compression
      result
    end

    # from https://github.com/amzn/selling-partner-api-models/blob/main/clients/sellingpartner-api-documents-helper-java/src/main/java/com/amazon/spapi/documents/impl/AESCryptoStreamFactory.java
    def feed_cipher(response, encrypt:)
      key = Base64.decode64(response.dig(:encryptionDetails, :key))

      cipher = case response.dig(:encryptionDetails, :standard)
      when "AES"
        OpenSSL::Cipher.new("AES-#{key.size * 8}-CBC")
      else
        raise "unknown encryption standard #{response.inspect}"
      end

      encrypt ? cipher.encrypt : cipher.decrypt
      cipher.key = key
      cipher.iv = Base64.decode64(response.dig(:encryptionDetails, :initializationVector))
      cipher
    end
  end
end
