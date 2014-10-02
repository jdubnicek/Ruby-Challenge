require 'json'
require 'open-uri'

class StudentData

	def initialze
		@array = nil
		@sorted_array = nil
	end

  def parse_data
    @array = JSON.load(open("http://dev.dryan.net.s3.amazonaws.com/students.json"))
  end
	
	def sort_data
    parse_data
		sort_order = ["Freshman", "Sophomore", "Junior", "Senior"]
		temp_array = @array.each{ |k,v| k["grade"].capitalize!}
		@sorted_array = temp_array.sort_by{|k,v| [sort_order.index(k["grade"])]}
	  print_student_info
  end

	def print_student_info
		puts @sorted_array		
	end
end

data = StudentData.new
data.sort_data


 

