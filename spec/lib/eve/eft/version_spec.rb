# frozen_string_literal: true

require 'spec_helper'

RSpec.describe EVE::EFT::VERSION do
  describe '.gem_version' do
    it 'returns the current version as a Gem::Version' do
      expect(EVE::EFT.gem_version).to eq(EVE::EFT::VERSION::STRING)
    end
  end

  it 'has a version number' do
    expect(EVE::EFT::VERSION::STRING).to eq(File.read('EVE_EFT_VERSION').strip)
  end
end
