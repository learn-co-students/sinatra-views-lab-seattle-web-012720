class App < Sinatra::Base

	get '/' do
		"Boom website"
	end

	get '/goodbye' do
		erb :goodbye
	end

	get '/hello' do
		erb :hello
	end

	get '/date' do
		if status == 200
			erb :date
		elsif status == 404
			"Your application is not responding to GET /date. Did you create that route?"
		end
	end
end
