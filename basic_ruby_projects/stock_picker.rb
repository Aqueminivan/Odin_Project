def stock_picker(stock_prices)
    max_profit = 0
    buy_price = 0
    sell_price = 0
    result = []
    stock_prices.each_with_index do |iterator_price, i|
        stock_prices.each_with_index do |range_price, j|
            new_max_profit = iterator_price - range_price
            if new_max_profit > max_profit && stock_prices.index(range_price) < stock_prices.index(iterator_price)
                max_profit = new_max_profit
                result = [j, i]
            end
        end
    end
    return result
end

pp stock_picker([17,3,6,9,15,8,6,1,10])

pp stock_picker([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])