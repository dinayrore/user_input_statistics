require 'string_statistic.rb'

describe StringStatistic do
  before :example do
    array = %w(kitten meow Rufus cat Jimothy)
    @string_stats = StringStatistic.new(array)
  end
  describe '.calculate_count' do
    context "given ['kitten', 'meow', 'Rufus', 'cat', 'Jimothy']" do
      it 'returns 5' do
        expect(@string_stats.calculate_count).to eq 5
      end
    end
  end

  describe '.calculate_minimum_length' do
    context "given ['kitten', 'meow', 'Rufus', 'cat', 'Jimothy']" do
      it 'returns 3' do
        expect(@string_stats.calculate_minimum_length).to eq 3
      end
    end
  end


  describe '.calculate_maximum_length' do
    context "given ['kitten', 'meow', 'Rufus', 'cat', 'Jimothy']" do
      it 'returns 7' do
        expect(@string_stats.calculate_maximum_length).to eq 7
      end
    end
  end

  describe '.calculate_average_length' do
    context "given ['kitten', 'meow', 'Rufus', 'cat', 'Jimothy']" do
      it 'returns 5.0' do
        expect(@string_stats.calculate_average_length).to eq 5.0
      end
    end
  end

  describe '.calculate_commonalities' do
    context "given ['kitten', 'meow', 'Rufus', 'cat', 'Jimothy']" do
      it 'returns 2' do
        expect(@string_stats.calculate_commonalities).to eq 2
      end
    end
  end
end
