require 'input.rb'

describe Input do
  before(:context) do
    value = Input.new
  end
  describe '.string?' do
    context "given value = Input.new('kitten')" do
      it 'returns true' do
        expect(value.string?).to be true
      end
    end
  end
  describe '.float?' do
    context "given '3.45'" do
      it 'returns true'  do
        expect(Input.new('3.45').float?).to be true
      end
    end
  end
  describe '.float?' do
    context "given '-1.23'" do
      it 'returns true'  do
        expect(Input.new('-1.23').float?).to be true
      end
    end
  end
  describe '.integer?' do
    context "given '42'" do
      it 'returns true' do
        expect(Input.new('42').integer?).to be true
      end
    end
  end
  describe '.integer?' do
    context "given '-9'" do
      it 'returns true' do
        expect(Input.new('-9').integer?).to be true
      end
    end
  end
end
