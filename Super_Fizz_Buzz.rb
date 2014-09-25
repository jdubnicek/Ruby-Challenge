class FizzApp
	attr_accessor :input, :output, :num

	def initialize
		self.input  = $stdin
		self.output = $stdout
		@num = num
	end

	def get_target
		puts "Please enter a target number:"
		@num = input.gets.chomp
		output.puts "User selected: #{num}"
	end

	def fizzbuzz
		i = 1
		while i <= @num.to_i
			if i % 5 == 0 && i % 3 == 0
				puts "FizzBuzz"
			elsif i % 5 == 0
				puts "Buzz"
			elsif i % 3 == 0
				puts "Fizz"
			else
				puts i
			end
			i += 1
		end
	end
end


buzzy = FizzApp.new

buzzy.get_target
buzzy.fizzbuzz