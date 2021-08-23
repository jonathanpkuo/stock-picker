require 'pry-byebug'

def stock_picker(array)
    current_profit = 0
    current_profit_index = []
    buy_index = 0
    profit = 0
    while buy_index < array.length - 1 do
        sell_index = buy_index + 1
        while sell_index < array.length do
            profit = array[sell_index] - array[buy_index]
            if profit > current_profit
                current_profit = profit
                current_profit_index = [buy_index, sell_index]
            end
            sell_index += 1
        end
        buy_index += 1
    end
    return current_profit_index
end

$test_array = [17,3,6,9,15,8,6,1,10]