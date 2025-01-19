class SubStrings
  def find_substrings(string,substring_array)
    hash = Hash.new
    substring_array.each do |substring|
      occurrences = string.scan(substring)
      if occurrences.length > 0
        hash[substring] = occurrences.length
      end
    end
    return hash
  end
end