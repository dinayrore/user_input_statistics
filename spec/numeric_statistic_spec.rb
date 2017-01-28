require 'numeric_statistic.rb'

describe NumericStatistic do
  before :all do
    array = [27, -9, 4.56, -1.23, 27]
    @numeric_stats = NumericStatistic.new(array)
  end
  describe '.calculate_count' do
    context 'given numeric_stats' do
      it 'returns 5' do
        expect(@numeric_stats.calculate_count).to eq 5
      end
    end
  end

  describe '.calculate_sum' do
    context 'given numeric_stats' do
      it 'returns 48.3' do
        expect(@numeric_stats.calculate_sum).to eq 48.3
      end
    end
  end

  describe '.calculate_average' do
    context 'given numeric_stats' do
      it 'returns 9.7' do
        expect(@numeric_stats.calculate_average).to eq 9.7
      end
    end
  end

  describe '.calculate_mode' do
    context 'given numeric_stats' do
      it 'returns 27' do
        expect(@numeric_stats.calculate_mode).to eq 27
      end
    end
  end

  describe '.calculate_median' do
    context 'given numeric_stats' do
      it 'returns 4.6' do
        expect(@numeric_stats.calculate_median).to eq 4.6
      end
    end
  end

  describe '.calculate_standard_diviation' do
    context 'given numeric_stats' do
      it 'returns 16.5' do
        expect(@numeric_stats.calculate_standard_diviation).to eq 16.5
      end
    end
  end
end
