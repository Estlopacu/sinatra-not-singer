#CONFIGURATION

configure do
	#Port
	set :port, 666

	#Root directory
	set :root, File.dirname(__FILE__) + '/../app'
	
	#Static files
	set :public_folder, Proc.new { File.join(root, "static") }

	#Templates =(
	set :views, Proc.new { File.join(root, "views") }

	#Public folder (css, js, etc) 
	set :public_folder, Proc.new { File.join(root, "static") }
end
