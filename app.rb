require "sinatra"
require_relative "coin_changer_method.rb"

get '/' do
	erb :name
end

post '/name' do 
	first = params[:first]
	last = params[:last]
	#"#{first} #{last} is you full name"
	redirect '/amount?first=' + first + "&last=" + last
end	

get '/amount' do
	first = params[:first]
	last = params[:last]
	erb :amount, locals: {first: first, last: last}
end

post '/amount' do
	first = params[:first]
	last = params[:last]
	total = params[:total]
	change = coin_changer(total.to_i)
	#"#{first} #{last} and #{total} and #{change}"
	redirect '/results?first=' + first + "&last=" + last + "&total=" + total + "&change=" + change
end	

get '/results' do
	first = params[:first]
	last = params[:last]
	total = params[:total]
	change = params[:change]
	erb :results, locals: {first: first, last: last, total: total, change: change}
end	

post '/again' do
	first = params[:first]
	last = params[:last]
	redirect '/amount?first=' + first + "&last=" + last
end	

get '/random' do
	erb :random
end	


