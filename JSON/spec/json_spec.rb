require 'json'
require 'open-uri'
require_relative '../lib/JSON.rb'

RSpec.describe StudentData do

  before :each do
    @student_data = StudentData.new
  end

  before do
    @parsed_body = JSON.load(open("http://dev.dryan.net.s3.amazonaws.com/students.json"))
  end

	describe "#parse_data" do
		it "returns the array of hashes" do
			expect(@student_data.parse_data).to match_array(@parsed_body)
		end
	end

  describe "#sort_data" do
    it "sorts the data by student grade level" do
      expect(@student_data.sort_data).to match(@sorted_array)
    end
  end

  describe "#print_student_info" do
    it "outputs the sorted data to the console" do
      expect{@student_data.print_student_info}.to output(puts @sorted_array).to_stdout
    end
  end

end