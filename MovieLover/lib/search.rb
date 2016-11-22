require 'imdb'

class Search
	attr_accessor :search
	def initialize(string)
		@search = Imdb::Search.new(string)
	end
	def movies
		posters = []
		count = 0
		i = 0
		while count < 9
			if @search.movies[i].poster
				posters << @search.movies[i].poster
				count += 1
			end
			i += 1
		end
		posters
	end
end
