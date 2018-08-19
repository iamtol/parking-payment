class Cost
    def count(hour)
        if hour <= 1
           return 25
        end
        if hour > 1 && hour <=2
            return 50
        end
        if hour > 2 && hour <= 3
            return  80
        end
        110
    end
end

Given("I got {int}") do |hour|
    @hour = hour
    @cost = Cost.new 
end

  When("I count with parking") do
    @actual = @cost.count @hour
end
  
  Then("I should get {int}") do |expected|
    expect(@actual).to eq expected
end

# Given("I got {int}") do |input|
#     @input = input
#     @fizzbuzz = Fizzbuzz.new
#   end
  
#   When("I count with fizzbuzz") do
#      @actual = @fizzbuzz.count @input
#   end
  
#   Then("I should get {string}") do |expected|
#     expect(@actual).to eq expected
#   end