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
			'What kind of movies to Pirates like to watch?' => 'Rated arrrrrrrr movies O_o tee hee',
			'What do you call a rabbit with fleas?' => 'Bugs Bunny!!!'
		}

		# We would like to change this so that it pulls a list of jokes from a file instead of using a hash

	    joke = jokes.keys[rand(jokes.keys.length)]
	    answer = jokes[joke]

	    puts joke
	    puts "Press any key to see the answer"
	    gets
	    puts answer
	    puts '* * * * * * *'
	end

	def doUserChoice(choice = getUserChoice.to_i)
		case choice
		when 1
			puts "you chose 1"
			doUserChoice
		when 2
	        tellAJoke
	        doUserChoice
		when 3
			puts "Goodbye"
			Process.exit
		else
			puts "Hey buddy, stay within the choices yer given."
			doUserChoice
		end
	end

end

calculator = Calculator.new

