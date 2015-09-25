require 'net/http'
require 'net/https'
require 'uri'

module Slack
  module Incoming
    module Connection
      def connection
        uri = URI.parse(webhook_url)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.ssl_version = :TLSv1
        http.verify_mode = OpenSSL::SSL::VERIFY_PEER
        http
      end
    end
  end
end
