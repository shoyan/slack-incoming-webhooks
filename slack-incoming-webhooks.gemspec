# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slack/incoming/webhooks/version'

Gem::Specification.new do |spec|
  spec.name          = "slack-incoming-webhooks"
  spec.version       = Slack::Incoming::Webhooks::VERSION
  spec.authors       = ["Shohei Yamasaki"]
  spec.email         = ["s-yamasaki@pepabo.com"]

  spec.summary       = %q{A simple wrapper for posting to slack.}
  spec.description   = %q{A simple wrapper for posting to slack.}
  spec.homepage      = "https://github.com/shoyan/slack-incoming-webhooks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
end
