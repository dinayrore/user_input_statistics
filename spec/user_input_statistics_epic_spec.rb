require 'user_input_statistics_epic'

describe 'User Input Statistics Epic Mode' do
  describe '#numeric' do
    context "given '42', []" do
      it "returns ['42']" do
        expect(numeric('42', [])).to eq(['42'])
      end
    end
    context "given '3.45', []" do
      it "returns ['3.45']" do
        expect(numeric('3.45', [])).to eq(['3.45'])
      end
    end
    context "given '-9', []" do
      it "returns ['-9']" do
        expect(numeric('-9', [])).to eq(['-9'])
      end
    end
    context "given '-1.23', []" do
      it "returns ['-1.23']" do
        expect(numeric('-1.23', [])).to eq(['-1.23'])
      end
    end
  end
end
