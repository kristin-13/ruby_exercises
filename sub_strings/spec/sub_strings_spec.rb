# frozen_string_literal: true

require './lib/sub_strings.rb'

describe SubStrings do 
  subject { SubStrings.new }

  describe '#find_substrings' do
    it 'works with example dictionary' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(subject.find_substrings("below",dictionary)).to eq({ "below" => 1, "low" => 1 }) 
    end
  end
end