get '/' do
	@listHats = Hat.all 
	erb :'index.html'
end

get '/new' do 
	erb :'new.html'
end

post '/create' do
	@hat = Hat.new(:brand => params[:brand],:style => params[:style])
	if @hat.save
		redirect '/'
	else
		redirect '/create'
	end
end

get '/show/:id' do
	@hat = Hat.find(params['id'])
	erb :'show.html'
end

get '/edit/:id' do
	@hat = Hat.find(params['id'])
	erb :'edit.html'
end

post '/edit/:id' do
	@hat = Hat.find(params['id'])
	@hat.brand = params['brand']
	@hat.style = params['style']
	@hat.save
	redirect '/'
end

get '/delete/:id' do
	@hat = Hat.find(params['id'])
	@hat.destroy
	redirect '/'
end