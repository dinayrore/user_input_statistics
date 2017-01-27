require 'input.rb'

describe Input do
  describe '.string?' do
    context "given 'kitten'" do
      it 'returns true' do
        value = Input.new('kitten')
        expect(value.string?).to be true
      end
    end
  end

  describe '.float?' do
    context "given '3.45'" do
      it 'returns true' do
        value = Input.new('3.45')
        expect(value.float?).to be true
      end
    end
  end
  describe '.float?' do
    context "given '-1.23'" do
      it 'returns true' do
        value = Input.new('-1.23')
        expect(value.float?).to be true
      end
    end
  end

  describe '.integer?' do
    context "given '42'" do
      it 'returns true' do
        value = Input.new('42')
        expect(value.integer?).to be true
      end
    end
  end
  describe '.integer?' do
    context "given '-9'" do
      it 'returns true' do
        value = Input.new('-9')
        expect(value.integer?).to be true
      end
    end
  end
end
