class Calculator
	def initialize
		puts '*************************'
		puts 'Welcome to the Calculator'
		puts '*************************'

		doUserChoice
	end

	private
	def getUserChoice
		puts '1. Calculate something 2. Tell me a joke 3. exit'
		puts 'Enter your choice:'
		gets
	end

	def tellAJoke
		jokes = {
			'Why does The Little Mermaid wear seashells?' => 'Because D shells are too big and A shells are too small. Wakka Wakka!',
			'Why did the fly fly?' => 'Because the spider spied her! Hoo Haa Hee Haa',
			'What kind of movies to Pirates like to watch?' => 'Rated arrrrrrrr movies O_o tee hee'
		}
	end

	def doUserChoice(choice = getUserChoice.to_i)
		case choice
		when 1
			puts "you chose 1"
		when 2
			puts "you chose 2"
		when 3
			puts "you chose 3"
		else
			puts "Hey buddy, stay within the choices yer given."
			doUserChoice
		end
	end

end

calculator = Calculator.new

