def stock_picker(stock_prices)

    #set buy and sell days to 0
    best_return_days =[0,0]

    for buy_day in (0...stock_prices.length)
        #puts "buy_day: #{buy_day}"
        
        for sell_day in (buy_day+1...stock_prices.length)
            #puts "sell day: #{sell_day}"

            current_return_value = stock_prices[sell_day] - stock_prices[buy_day]
            
            #Using the values in our best_return_days array to reference indexes in the stock_prices array we and subtract the two corresponding values in stock_prices to find the current best return value
            best_return_value = stock_prices.map{|n| stock_prices[best_return_days[1]]-stock_prices[best_return_days[0]]}[0]

            if current_return_value > best_return_value

                best_return_days = [buy_day,sell_day]
                
            end
        end
    end
    
    puts "[#{best_return_days[0]},#{best_return_days[1]}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])

stock_picker([3,6,1,15,8,69,1,10])