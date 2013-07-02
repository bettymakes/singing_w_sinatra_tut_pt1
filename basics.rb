require 'sinatra'

get '/' do
	"Hello, World!"
end


get '/about' do
	'A little about me.'
end

get '/hello/:name' do
	"#{params[:name]} rocks!"
end

get '/hello/:name/:city' do
	"Greetings #{params[:name]}, from the lovely land of #{params[:city]}"
end

get '/special/*' do
	"This is so special. What a cool message you've written here: #{params[:splat]}."
end

get '/form' do
	erb :form
end

post '/form' do
	"You said '#{params[:message]}'"
end

get '/secret' do
	erb :secret
end

post '/secret' do
	params[:secret].reverse
end

get '/decrypt/:secret' do
	params[:secret].reverse
end

# not_found do
# 	status 404
# 	'not found'
# end

not_found do
	halt 404, 'not found'
end