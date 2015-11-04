require 'sinatra'
before do
 	content_type :txt 
	@nums = [1,2,3,4,5]
end


get '/guess/:num' do
	theValue = @nums.sample
	if Integer(params["num"]) == theValue 
		"Yeah it's the number #{theValue}"
	else
		"Close!! It's #{theValue}"
	end
end