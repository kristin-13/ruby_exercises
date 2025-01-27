class BubbleSorter
  def bubble_sort(arr)
    iteration = {new_array: arr,unchanged: false}
    until iteration[:unchanged] == true do
      iteration = self.run_bubble_sort_iteration(iteration[:new_array])
    end
    p iteration[:new_array]
  end

  def run_bubble_sort_iteration(array)
    starting_array = array
    new_array = Array.new(array.length)
    start_index = 0
    unchanged = true
    until start_index + 1 == array.length do
      pair = [starting_array[start_index],starting_array[start_index+1]]
      if pair.length==2 && pair[0] > pair[1]
        starting_array[start_index] = pair[1]
        starting_array[start_index+1] = pair[0]
        unchanged = false
      end
      start_index +=1
    end
    return {new_array: starting_array, unchanged: unchanged}
  end
end
# test = BubbleSorter.new
# test_sorter = test.bubble_sort([1,5,3,4,2,6])