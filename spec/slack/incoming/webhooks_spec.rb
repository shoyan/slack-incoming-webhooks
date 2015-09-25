require 'spec_helper'

describe Slack::Incoming::Webhooks do
  it 'has a version number' do
    expect(Slack::Incoming::Webhooks::VERSION).not_to be nil
  end

  subject { described_class.new 'http://example.com' }

  describe "#initialize" do
    it "sets the given webhook_url" do
      expect( subject.webhook_url ).to eq 'http://example.com'
    end

    it "returns default payload" do
      expect( subject.payload ).to be {}
    end

    it "sets the payload options" do
      subject = described_class.new 'http://example.com', channel: 'foo'
      expect( subject.payload ).to eq channel: 'foo'
    end

    it "sets the attachments options" do
      subject = described_class.new 'http://example.com', attachments: [{ color: 'foo', text: 'sample' }]
      expect( subject.payload ).to eq attachments: [{ color: 'foo', text: 'sample' }]
    end
  end

  describe "#channel=" do
    it "sets the given channel" do
      subject.channel = "#foo"
      expect( subject.channel ).to eq "#foo"
    end
  end

  describe "#username=" do
    it "sets the given username" do
      subject.username = "foo"
      expect( subject.username ).to eq "foo"
    end
  end

  describe "#attachments=" do
    it "sets the given attachments" do
      subject.attachments= [{ color: "good", text: "sample" }]
      expect( subject.attachments ).to eq [{color: "good", text: "sample"}]
    end
  end
end
