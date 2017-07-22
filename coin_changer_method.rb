#coin_changer_method



def coin_changer(change)
	coins = {quarter: 0, dime: 0, nickel: 0, penny: 0}
	
	while change > 0 do


		if change >= 25
			change -= 25
			coins[:quarter] += 1
		elsif change >= 10
			change -= 10
			coins[:dime] += 1
		elsif change >= 5
			change -= 5
			coins[:nickel] += 1
		elsif change >= 1
			change -= 1
			coins[:penny] += 1
		end	
	end
	coins
end
