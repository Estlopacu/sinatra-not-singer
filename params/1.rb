require 'sinatra'

get '/hash/:name' do
	"Hola! #{params["name"]}!<br/>Access by hash"
end

get '/block/:name' do |n|
	"Hola! #{n}! <br/> Access by block parameters"
end

get '/query' do
	name = params[:name]
	lastname = params[:lastname]
	"Hola! #{name} #{lastname}!<br/> Access by query parameters"
end