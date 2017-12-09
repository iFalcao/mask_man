require 'spec_helper'
include MaskMan

RSpec.describe MaskMan::Convert do

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
      it 'return empty string when an empty string is passed' do
        expect( Convert.rm_letters '' ).to eq('')
      end
    end
  end

  context 'method rm_numbers' do
    context 'when the params are valid' do
      it 'return string without numbers' do
        expect( Convert.rm_numbers 'abc123def456' ).to eq('abcdef')
      end

      it 'return letters and special chars' do
        expect( Convert.rm_numbers 'abc123-\def456' ).to eq('abc-\def')
      end
    end

    context 'when the params are invalid' do
      it 'return empty string when an empty string is passed' do
        expect( Convert.rm_numbers '' ).to eq('')
      end
    end
  end

  context 'method only_letters' do
    context 'when the params are valid' do
      it 'return a new string with only letters' do
        expect( Convert.only_letters 'abc123def456' ).to eq('abcdef')
      end

      it 'removes numbers and special chars' do
        expect( Convert.only_letters 'abc123-\def456' ).to eq('abcdef')
      end
    end

    context 'when the params are invalid' do
      it 'return empty string when an empty string is passed' do
        expect( Convert.only_letters '' ).to eq('')
      end
    end
  end

  context 'method only_numbers' do
    context 'when the params are valid' do
      it 'return a new string with only numbers' do
        expect( Convert.only_numbers 'abc123def456' ).to eq('123456')
      end

      it 'removes letters and special chars' do
        expect( Convert.only_numbers 'abc123-\def456' ).to eq('123456')
      end
    end

    context 'when the params are invalid' do
      it 'return empty string when an empty string is passed' do
        expect( Convert.only_numbers '' ).to eq('')
      end
    end
  end
  
end