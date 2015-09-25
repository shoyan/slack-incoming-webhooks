require "slack/incoming/webhooks/configuration"
require "slack/incoming/webhooks/connection"
require "slack/incoming/webhooks/request"
require "slack/incoming/webhooks/version"

module Slack
  module Incoming
    class Webhooks
      include Configuration
      include Connection
      include Request

      attr_accessor :webhook_url

      def initialize(webhook_url, options={})
        @webhook_url = webhook_url
        options.each { |key, val| send("#{key}=", val) }
      end
    end
  end
end
