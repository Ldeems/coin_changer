#coin_changer_method
def coin_changer(change)
	coins = {quarters: 0, dimes: 0, nickels: 0, pennies: 0}
	
	while change > 0 do

		if change >= 25
			change -= 25
			coins[:quarters] += 1
		elsif change >= 10
			change -= 10
			coins[:dimes] += 1
		elsif change >= 5
			change -= 5
			coins[:nickels] += 1
		elsif change >= 1
			change -= 1
			coins[:pennies] += 1
		end	
	end
	
	# coins.delete_if {|key,value| "value" <= "0"}
	coins.each do |key,value|
		if value.to_i == 0
			coins.delete(key)

		end
	end	
	coins.to_a.flatten.join(" ")
	
end






