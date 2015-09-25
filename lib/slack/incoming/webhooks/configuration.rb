module Slack
  module Incoming
    module Configuration
      def channel
        payload[:channel]
      end

      def channel= channel
        payload[:channel] = channel
      end

      def username
        payload[:username]
      end

      def username= username
        payload[:username] = username
      end

      def attachments
        payload[:attachments]
      end

      def attachments= attachments
        payload[:attachments] = [attachments]
      end
    end
  end
end
