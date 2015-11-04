require 'sinatra'

get '/file' do
	send_file "dance.gif", :type => :gif
end