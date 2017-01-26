require 'input.rb'

describe Input do
  describe '.string?' do
    context "given 'kitten', []" do
      it "returns ['kitten']" do
        expect(Input.string?('kitten', [])).to eq(['kitten'])
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
  describe '.numeric?' do
    context "given '42', []" do
      it "returns ['42']" do
        expect(Input.numeric?('42', [])).to eq(['42'])
      end
    end
    context "given '3.45', []" do
      it "returns ['3.45']" do
        expect(Input.numeric?('3.45', [])).to eq(['3.45'])
      end
    end
    context "given '-9', []" do
      it "returns ['-9']" do
        expect(Input.numeric?('-9', [])).to eq(['-9'])
      end
    end
    context "given '-1.23', []" do
      it "returns ['-1.23']" do
        expect(Input.numeric?('-1.23', [])).to eq(['-1.23'])
      end
    end
  end
end
