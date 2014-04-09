
def stock_picker(days)
	purchase_date, sell_date, max_profit = 0, 0, 0	
	i = 0
	while i < days.size do 
		k = i + 1
		while k < days.size do	
			if days[k] - days[i] > max_profit
				purchase_date, sell_date = i, k
				max_profit = days[k] - days[i]
			end
		k += 1	
		end
		i += 1			
	end
	[purchase_date,sell_date]	
end


prices = [17,3,6,9,15,8,6,1,10]

puts "Expected: [1,4] for a profit of 12 (15 -3)"
puts "Actual: " + stock_picker(prices).to_s





