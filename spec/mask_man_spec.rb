require 'spec_helper'
include MaskMan

RSpec.describe MaskMan do
  it 'has a version number' do
    expect(MaskMan::VERSION).not_to be nil
  end

  describe 'Convert Module' do
    context 'method rm_special' do
      context 'when the params are valid' do
        it 'return telephone masked string without special characters' do
          expect( Convert.rm_special '(71) 3325-2564' ).to eq('7133252564')
        end
  
        it 'returns a correct string without any changes' do
          expect( Convert.rm_special '7133252564' ).to eq('7133252564')
        end
      end
  
      context 'when the params are invalid' do
        it 'return empty string when nil is passed' do
          expect( Convert.rm_special nil ).to eq('')
        end
  
        it 'return empty string when an empty string is passed' do
          expect( Convert.rm_special '' ).to eq('')
        end
      end
    end
    
    context 'method rm_letters' do
      context 'when the params are valid' do
        it 'return only numbers' do
          expect( Convert.rm_letters 'abc123def456' ).to eq('123456')
        end
  
        it 'return numbers and special chars' do
          expect( Convert.rm_letters 'abc123-\def456' ).to eq('123-\456')
        end
      end
  
      context 'when the params are invalid' do
        it 'return empty string when nil is passed' do
          expect( Convert.rm_letters nil ).to eq('')
        end
  
        it 'return empty string when an empty string is passed' do
          expect( Convert.rm_letters '' ).to eq('')
        end
      end
    end
  end

  describe 'Validate Module' do
    context 'method has_special_chars?' do
      it 'return true when string contains special characters' do
        expect( Validate.has_special_chars? '(71) 3325-2564' ).to eq(true)
      end

      it 'return false when string does not contains special characters' do
        expect( Validate.has_special_chars? '7133252564' ).to eq(false)
      end
    end

    context 'method only_asc?' do
      it 'return true when string contains only asc bytes' do
        expect( Validate.only_asc? '(71) 3325-2564' ).to eq(true)
      end

      it 'return false when string does not contains only asc bytes' do
        expect( Validate.only_asc? 'aøbauhrhræoeuacå' ).to eq(false)
      end
    end

    context 'method count_special_chars?' do
      it 'return 5 when string contains 5 special_chars' do
        expect( Validate.count_special_chars '()-*\\' ).to eq(5)
      end
    end
  end
end
