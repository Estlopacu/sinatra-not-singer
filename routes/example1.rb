require 'sinatra'

# /hash/esteban
get '/hash/:name' do
	"Hola! #{params["name"]}!<br/>Access by hash"
end

# /block/esteban/lopez
get '/block/:name/:lastname' do |name,lastname|
	"Hola! #{name} #{lastname}! <br/> Access by block parameters"
end

# /query?name=esteban&lastname=lopez
get '/query' do
	name = params[:name] || 'name'
	lastname = params[:lastname] || 'last name'
	"Hola! #{name} #{lastname}!<br/> Access by query parameters"
end

# /halt
get '/halt' do
	'I am done!'
	halt 500
end