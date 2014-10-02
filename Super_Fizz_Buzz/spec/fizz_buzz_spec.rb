require_relative '../lib/Super_Fizz_Buzz.rb'

RSpec.describe FizzApp do

  describe '#get_target' do
    
    before :each do
      @fizz_app = FizzApp.new
    end

    it "displays the user's target number" do
      allow(@fizz_app).to receive(gets.chomp).and_return(@num = 15*rand(1..100) + 1)
      expect(@fizz_app.get_target).to eq(puts "User selected: #{@num}")
    end
  end
  
  describe "#fizzbuzz" do

    before :each do 
      @fizz_app = FizzApp.new
      @num = 15*rand(1..100) + 1
    end

    it "outputs Buzz for multiples of 15" do
      @num = 15*@num
      expect{@fizz_app.fizzbuzz(@num)}.to output("FizzBuzz\n").to_stdout
    end
  
    it "outputs Buzz for multiples of 5" do
      @num = 5*@num
      expect{@fizz_app.fizzbuzz(@num)}.to output("Buzz\n").to_stdout
    end

    it "outputs Fizz for multiples of 3" do
      @num = 3*@num
      expect{@fizz_app.fizzbuzz(@num)}.to output("Fizz\n").to_stdout
    end

    it "outputs the number for all non-FizzBuzz numbers" do
      @num = @num
      expect{@fizz_app.fizzbuzz(@num)}.to output("#{@num}\n").to_stdout
    end
  end
end

















# # require 'rspec/autorun'
# require_relative "Super_Fizz_Buzz"
# # require 'rpsec'

# RSpec.describe FizzApp do

#   before(:each) {@fizz_app = FizzApp.new}
  
#       let(:num) {@num = 3*rand(1..100)}
#     # before do
#     #   expect(@fizz_app.get_target).to eq(@num = 3*rand(1..100))
#       it "returns Fizz for mulitples of 3" do
#         # @fizz_app.get_target).to include?(@num = 3*rand(1..100))
#         expect(@fizz_app.fizzbuzz).to eq("Fizz")
#       end
#     # end
# end
  
#   #   # describe FizzApp do
#   #   before do
  #     @num == String.class
  #     it "checks for acceptable input" do
  #       expect(@fizz_app.get_target).to be_mind_of(String.class)
  #     end
  #   end
  

    # describe FizzApp do
  
      # it "returns Fizz for mulitples of 3" do
      #   @fizz_app = FizzApp.new
      #   @num = 3*rand(1..100)
      #   expect(@fizz_app.fizzbuzz).to eq("Fizz")
      # end
# end
  

#   before do
#     @fizz_app = FizzApp.new
#     @num = 15*rand(1..100) + 1
#   end
#     it "returns Buzz for mulitples of 5" do
#       expect(@fizz_app.fizzbuzz).to eq("Buzz")
#     end
  

#   # it "returns Buzz for multiples of 5" do
#   #   @fizz_app.fizzbuzz proc { @num % 5 ==0 }.must_output "Buzz"
#   # end

#   before do
#     @fizz_app = FizzApp.new
#     @num = 15*rand(1..100) + 1
#   end
#     it "returns FizzBuzz for mulitples of 15" do
#       expect(@fizz_app.fizzbuzz).to eq("FizzBuzz")
#     end

  
#     it "returns @num for all non FizzBuzz numbers" do
#       expect(@fizz_app.fizzbuzz).to eq(@num)
#     end
  


  
#     it "doesn't return FizzBuzz when it shouldn't" do
#       expect(@fizz_app.fizzbuzz).to not_equal "FizzBuzz"
#     end
# end

