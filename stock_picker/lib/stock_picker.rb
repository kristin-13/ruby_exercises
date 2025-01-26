class StockPicker
  def stock_picker(arr)
    arr_length = arr.length
    h = {}
    arr.each_with_index do |item, index|
      arr_after_item = arr[index,arr_length]
      arr_up_to_item = arr[0,index+1]
      dif_minus_min_up_to = item - arr_up_to_item.min
      dif_from_max_after = arr_after_item.max - item
      h[index] = {item:item,dif_minus_min_up_to:dif_minus_min_up_to,dif_from_max_after:dif_from_max_after}
    end
    max_profit = h.map {|key, value| value[:dif_minus_min_up_to]}.max
    sell_object = h.find {|key,value| value[:dif_minus_min_up_to] == max_profit }
    buy_object = h.find {|key,value| value[:dif_from_max_after] == max_profit }
    buy_and_sell_array = [buy_object,sell_object]
    return buy_and_sell_array.collect {|k,v| k}
  end
end

# test = StockPicker.new
# test.stock_picker([5,2,3,10,1])
# test.stock_picker([17,3,6,9,15,8,6,1,10])