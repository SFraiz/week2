require "sinatra"
require "pry"
require "imdb"

require_relative 'lib/search.rb'

@@result = []
get '/' do

  erb(:add)
end

post "/search" do
   @@result = Search.new(params[:word]).movies
	redirect to('/result')
end
	
get ('/result') do
	@movies = @@result	
erb(:result)
end
