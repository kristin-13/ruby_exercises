require './lib/bubble_sorter.rb'

describe BubbleSorter do
  subject { BubbleSorter.new }
  
  describe '#bubble_sort' do
    it 'sorts array using bubble sort methodology' do
      example_array = [4,3,78,2,0,2]
      expect(subject.bubble_sort(example_array)).to eq([0,2,2,3,4,78]) 
    end
  end
end
