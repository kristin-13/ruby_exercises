# frozen_string_literal: true

require './lib/stock_picker.rb'

describe StockPicker do
  subject { StockPicker.new }
  describe '#stock_picker' do
    it 'works with example array' do
      sample_array = [17,3,6,9,15,8,6,1,10]
      expect(subject.stock_picker(sample_array)).to eq([1,4])
    end
  end
end