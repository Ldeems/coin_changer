require "sinatra"
require_relative "coin_changer_method.rb"
enable :sessions

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
	session[:change] = coin_changer(total.to_i)
	bill = params[:info]
	#"#{first} #{last} and #{total} and #{change}"
	redirect '/results?first=' + first + "&last=" + last + "&total=" + total + '&info=' + bill
end	

get '/results' do
	first = params[:first]
	last = params[:last]
	total = params[:total]
	bill = params[:info]
	#"#{bill}"
	erb :results, locals: {first: first, last: last, total: total, change: session[:change], bill: bill}
end	

post '/again' do
	first = params[:first]
	last = params[:last]
	redirect '/amount?first=' + first + "&last=" + last
end	

get '/random' do
	erb :random
end	


