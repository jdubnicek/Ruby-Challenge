require 'json'
require 'open-uri'

class StudentData

	def initialze
		@array = []
		@sorted_array = []
	end

	def parse_data
		@array = JSON.load(open("http://dev.dryan.net.s3.amazonaws.com/students.json"))
	end
	
	def sort_data
		sort_order = ["Freshman", "Sophomore", "Junior", "Senior"]
		@sorted_array = @array.each{ |k,v| k["grade"].capitalize!}.sort_by{|k,v| [sort_order.index(k["grade"])]}
	end

	def print_student_info
		puts @sorted_array		
	end
end

data = StudentData.new

data.parse_data
data.sort_data
data.print_student_info