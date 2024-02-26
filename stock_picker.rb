def stock_picker(array)
    max_profit = 0
    buy_day = 0
    sell_day = 0
    array[0..-2].each_with_index do |buy, i|          # From 'array' we will iterate through the 0 to second last value of the array. element = buy, index = i.
      array[(i+1)..-1].each_with_index do |sell, j|   # From array we iterate through i+1 to the last value. element = sell, index = j.
          if (sell - buy) > max_profit                # Here we compare the values of the two loops, if sell - buy is greater than zero, at first.
            buy_day = i                               # The 'i' index becomes buy_day, as this is now the buy day with the largest profit.
            sell_day = j + (i + 1)                    # The sell_day adjusts 'j' to get the correct index in the original array arr.
            max_profit = sell - buy                   # Sets the new value of max_profit.
          end
      end
  end

    [buy_day, sell_day]
  end
  