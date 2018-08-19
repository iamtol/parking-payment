require 'time'

class Cost
    def diff(startTime, endTime)
        diffTime = (Time.parse(endTime) - Time.parse(startTime)) / 3600
        # puts startTime, endTime, diffTime
        if diffTime <= 1
            return 25
        end
        if diffTime > 1 && diffTime <= 2
            return 50
        end
        if diffTime > 2 && diffTime <= 3
            return 80
        end
        if diffTime > 3 && diffTime <= 4
            return 110
        end
        if diffTime > 4 && diffTime <= 5
            return 145
        end
        if diffTime > 5 && diffTime <= 6
            return 180
        end
        if diffTime > 6 && diffTime <= 24
            return 250
        end
    end
end

Given("I got parking ticket at time {string}") do |startTime|
    # @startTime = Time.at(startTime).utc.strftime("%H:%M:%S")
    @startTime = startTime
    @cost = Cost.new
end
  
When("I return parking at {string}") do |endTime|
    # @endTime = Time.at(endTime).utc.strftime("%H:%M:%S")
    @endTime = endTime
    @actual = @cost.diff @startTime, @endTime
end
  
Then("I pay parking {int} baht") do |cost|
    expect(@actual).to eq cost
end

Then("Show parking Time {string} hour") do |diffTime|
    @diffTime = (Time.parse(@endTime) - Time.parse(@startTime)) /3600
    @hour = (@diffTime.to_i)
    @min = (@diffTime * 60) % 60
    @sec = (@diffTime * 3600) % 60
    # puts Time.parse(diffTime).sec
    # puts @sec.round(0).to_s.rjust(2, '0')
    @expectTime = @hour.to_s.rjust(2, '0') + ":" + @min.round(0).to_s.rjust(2, '0') + ":" + @sec.round(0).to_s.rjust(2, '0')

    # @expectTime = (Time.parse(@endTime) - Time.parse(@startTime)) / 3600

    expect(@expectTime).to eq diffTime
end