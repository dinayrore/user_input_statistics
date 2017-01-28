require 'string_statistic.rb'

describe StringStatistic do
  before :all do
    array = %w(kitten meow Rufus cat Jimothy)
    string_stats = StringStatistic.new(array)
  end
  describe '.calculate_count' do
    context "given string_stats" do
      it 'returns 5' do
        expect(string_stats.calculate_count).to_eq 5
      end
    end
  end

  describe '.calculate_minimum_length' do
    context "given string_stats" do
      it 'returns 3' do
        expect(string_stats.calculate_count).to_eq 3
      end
    end
  end


  describe '.calculate_maximum_length' do
    context "given string_stats" do
      it 'returns 7' do
        expect(string_stats.calculate_count).to_eq 7
      end
    end
  end

  describe '.calculate_maximum_length' do
    context "given string_stats" do
      it 'returns 4.8' do
        expect(string_stats.calculate_count).to_eq 4.8
      end
    end
  end

  describe '.calculate_commonalities' do
    context "given string_stats" do
      it 'returns 2' do
        expect(string_stats.calculate_count).to_eq 2
      end
    end
  end
end
