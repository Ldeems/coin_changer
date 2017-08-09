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

	if coins[:quarter] > 1
		coins[:quarters] = coins.delete(:quarter)
	else
		coins[:quarter] = coins.delete(:quarter)	
	end

	if coins[:dime] > 1
		coins[:dimes] = coins.delete(:dime)
	else
		coins[:dime] = coins.delete(:dime)	
	end

	if coins[:nickel] == 1
		coins[:nickel] = coins.delete(:nickel)
	end

	if coins[:penny] > 1
		coins[:pennies] = coins.delete(:penny)
	else
		coins[:penny] = coins.delete(:penny)	
	end

	

	# coins.delete_if {|key,value| "value" <= "0"}
	coins.each do |key,value|
		if value.to_i == 0
			coins.delete(key)

		end
	end	
	

	# coins.each do|coin,value|
	# if coins[:quarters] == 1
	# 	coins[:quarter] = coins.delete(:quaters)
	# end
	# coins.each do |coin,value|
	#  "#{value}, #{coin}"
	# end	
	coins
end






