module Slack
  module Incoming
    module Configuration
      VALID_OPTIONS_KEYS = [
        :token,
        :channel,
        :text,
        :username,
        :attachments,
        :as_user,
        :parse,
        :link_names,
        :unfurl_links,
        :unfurl_media,
        :icon_url,
        :icon_emoji
      ].freeze

      attr_accessor(*VALID_OPTIONS_KEYS)

      def payload
        VALID_OPTIONS_KEYS.inject({}) do |o, k|
          o.merge!(k => send(k)) unless send(k).nil?
          o
        end
      end
    end
  end
end
