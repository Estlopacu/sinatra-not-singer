require 'sinatra'

set :work, 'Konrad'
set :port, 666
disable :dump_errors

get '/work' do
  "Work: " + settings.work
end