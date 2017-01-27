require 'input.rb'

describe Input do
  describe '.string?' do
    context "given 'kitten'" do
      it 'returns true' do
        expect(Input.string?('kitten')).to be true
      end
    end
  end

  describe '.float?' do
    context "given '3.45'" do
      it 'returns true' do
        expect(Input.float?('3.45')).to be true
      end
    end
  end
  describe '.float?' do
    context "given '-1.23'" do
      it 'returns true' do
        expect(Input.float?('-1.23')).to be true
      end
    end
  end

  describe '.integer?' do
    context "given '42'" do
      it 'returns true' do
        expect(Input.integer?('42')).to be true
      end
    end
  end
  describe '.integer?' do
    context "given '-9'" do
      it 'returns true' do
        expect(Input.integer?('-9')).to be true
      end
    end
  end
end
