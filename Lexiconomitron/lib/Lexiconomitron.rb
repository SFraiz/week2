class Lexiconomitron
	def initialize lexi
		@lexi = lexi
	end
	def eat_t
		if @lexi.downcase.include? "t"
			@lexi.delete "t"
		else
			@lexi
		end
	end
end

lexi = Lexiconomitron.new("great scott!")
p lexi.eat_t