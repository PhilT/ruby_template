# frozen_string_literal: true

require_relative '../app/hello'

RSpec.describe Hello do
  describe 'call' do
    it 'returns hello' do
      expect(subject.call).to eq 'Hello!'
    end

    it 'returns hello, Phil' do
      expect(subject.call('Phil')).to eq 'Hello, Phil!'
    end
  end
end
