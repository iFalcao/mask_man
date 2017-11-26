require 'spec_helper'
include MaskMan

RSpec.describe MaskMan do
  it 'has a version number' do
    expect(MaskMan::VERSION).not_to be nil
  end

end
