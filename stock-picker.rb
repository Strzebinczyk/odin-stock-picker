def stock_picker(stocks)
  buy = stocks[0..(stocks.length-2)]
  indexes = [0,0]
  profit = 0
  stocks.each_with_index do |sell_price, sell_index|
    buy.each_with_index do |buy_price, buy_index|
      if (buy_index > sell_index)
        next
      elsif (sell_price-buy_price > profit)
      profit = sell_price-buy_price
      indexes[0] = buy_index
      indexes[1] = sell_index
      end
    end
  end
  indexes
end

p stock_picker([17,3,6,9,15,8,6,1,10])