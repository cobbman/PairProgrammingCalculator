class Calculator
	def initialize
		puts 'Welcome to the Calculator'
		choice = getUserChoice
		puts "User choice was #{choice}" 
	end

	private
	def getUserChoice
		puts '1. Calculate something 2. Tell me a joke 3. exit'
		puts 'Enter your query:'
		choice = gets
	end

	def tellAJoke
		jokes = {
			'Why does The Little Mermaid wear seashells?' => 'Because D shells are too big and A shells are too small. Wakka Wakka!',
			'Why did the fly fly?' => 'Because the spider spied her! Hoo Haa Hee Haa',
			'What kind of movies to Pirates like to watch?' => 'Rated arrrrrrrr movies O_o tee hee'
		}
	end

end

calculator = Calculator.new

