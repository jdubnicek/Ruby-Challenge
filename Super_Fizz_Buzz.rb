class FizzApp
	attr_reader :num

	def initialize
		@num = num
	end

	def get_target
		puts "Please enter a target number:"
		@num = gets.chomp
		puts "User selected: #{num}"
	end

	def fizzbuzz
		1.upto(@num.to_i) do |num|
			if num % 5 == 0 && num % 3 == 0
				puts "FizzBuzz"
			elsif num % 5 == 0
				puts "Buzz"
			elsif num % 3 == 0
				puts "Fizz"
			else
				puts num
			end
		end
	end
end


buzzy = FizzApp.new

buzzy.get_target
buzzy.fizzbuzz