require "spec_helper"
include MaskMan

RSpec.describe MaskMan do
  it "has a version number" do
    expect(MaskMan::VERSION).not_to be nil
  end

  describe 'Convert Module' do
    
    context 'when the params are valid' do
      it "return telephone masked string without special characters" do
        expect( Convert.rm_special("(71) 3325-2564") ).to eq("7133252564")
      end

      it "returns a correct string without any changes" do
        expect( Convert.rm_special("7133252564") ).to eq("7133252564")
      end
    end

  end

  end
end
