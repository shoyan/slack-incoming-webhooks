require 'uri'
require 'json'

module Slack
  module Incoming
    module Request
      def post message, options={}
        uri = URI.parse(webhook_url)
        req = Net::HTTP::Post.new(uri.request_uri)
        req.set_form_data(payload: payload.merge(options).merge(text: message).to_json)
        connection.request(req)
      end
    end
  end
end
