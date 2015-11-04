require 'sinatra'

before do
	# Content-Type:text/html;charset=utf-8  => html
	# Content-Type:text/plain;charset=utf-8  => txt
	content_type :txt
end

get '/' do
	redirect '/este'
end

get '/este' do
	'1'
end

get '/este' do
	'2'
end