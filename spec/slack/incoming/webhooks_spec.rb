require 'spec_helper'

describe Slack::Incoming::Webhooks do
  it 'has a version number' do
    expect(Slack::Incoming::Webhooks::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
