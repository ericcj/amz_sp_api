require 'amz_sp_api_version'
require 'api_error'
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

    def encrypt_feed(feed_content, document_response_payload)
      cipher = document_cipher(document_response_payload, encrypt: true)
      cipher.update(feed_content) + cipher.final
    end

    def decrypt_and_inflate_document(ciphertext, document_response_payload)
      body = if cipher = document_cipher(document_response_payload, encrypt: false)
        cipher.update(ciphertext) + cipher.final
      else
        ciphertext
      end

      inflate_document(body, document_response_payload)
    end
    alias_method :decrypt_and_inflate_feed, :decrypt_and_inflate_document

    def inflate_document(body, document_response_payload)
      compression = document_response_payload[:compressionAlgorithm]
      raise AmzSpApi::ApiError.new("unknown compressionAlgorithm #{compression}") if compression && compression != "GZIP"
      compression ? Zlib::Inflate.inflate(body) : body
    end

    # from https://github.com/amzn/selling-partner-api-models/blob/main/clients/sellingpartner-api-documents-helper-java/src/main/java/com/amazon/spapi/documents/impl/AESCryptoStreamFactory.java
    def document_cipher(response, encrypt:)
      if key = Base64.decode64(response.dig(:encryptionDetails, :key))
        cipher = case response.dig(:encryptionDetails, :standard)
        when "AES"
          OpenSSL::Cipher.new("AES-#{key.size * 8}-CBC")
        else
          raise AmzSpApi::ApiError.new("unknown encryption standard #{response.inspect}")
        end

        encrypt ? cipher.encrypt : cipher.decrypt
        cipher.key = key
        cipher.iv = Base64.decode64(response.dig(:encryptionDetails, :initializationVector))
        cipher
      end
    end
  end
end
