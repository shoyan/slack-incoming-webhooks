# Slack::Incoming::Webhooks
[![Build Status](https://travis-ci.org/shoyan/slack-incoming-webhooks.svg)](https://travis-ci.org/shoyan/slack-incoming-webhooks)

A simple wrapper for posting to slack.

## Example
```ruby
require 'slack-incoming-webhooks'

slack = Slack::Incoming::Webhooks.new "WEBHOOK_URL"
slack.post "Hello World"

# => if your webhook is setup, will message "Hello World"
# => to the default channel you set in slack
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slack-incoming-webhooks'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slack-incoming-webhooks

## Usage

### Setting Defaults
On initialization you can set default payloads by passing an options hash.  
Options please refer to [incoming-webhooks](https://api.slack.com/incoming-webhooks) and [chat.postMessage](https://api.slack.com/methods/chat.postMessage).
.

```ruby
slack = Slack::Incoming::Webhooks.new "WEBHOOK_URL", channel: '#other-channel',
                                                     username: 'monkey-bot'
```

Once a notifier has been initialized, you can update the default channel or username or attachments or etc.

```ruby
slack.channel  = '#other-channel'
slack.username = 'monkey-bot'
slack.attachments = [{ color: '#36a64f',  title: 'Slack API Documentation' }]
```

### Attachments
It is possible to create more richly-formatted messages using [Attachments](https://api.slack.com/docs/attachments).  
slack-incoming-webhooks supports Attachments.

```ruby
attachments = {
  fallback: "Required plain-text summary of the attachment.",
  color: "#36a64f",
  pretext: "Optional text that appears above the attachment block",
  title: "Slack API Documentation",
  title_link: "https://api.slack.com/",
  text: "Optional text that appears within the attachment",
  image_url: "http://my-website.com/path/to/image.jpg"
}

slack.post "with an attachment", attachments: [attachments]
```

or setting defaults.

```ruby
slack = Slack::Incoming::Webhooks.new "WEBHOOK_URL", attachments: [attachments]
slack.post "with an attachment"
```

or attachments method.

```ruby
slack.attachments = [{ color: '#36a64f', title: 'Slack API Documentation' }]
```
## Console
run `bin/console` for an interactive prompt that will allow you to experiment.

```bash
$ bin/console

[1] pry(main)> slack = Slack::Incoming::Webhooks.new "WEBHOOK_URL"
=> #<Slack::Incoming::Webhooks:0x007fae6b871e48
[2] pry(main)> slack.post "Hello world!"
=> #<Net::HTTPOK 200 OK readbody=true>
```

## Testing
```bash
$ rspec
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/slack-incoming-webhooks/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
