class Timer
	attr_reader :seconds, :time_string

	def initialize
		@seconds = 0
	end
  

 	def seconds= (seconds)
  		@seconds = seconds
  		finalMinutes = 0
  		finalHours = 0

  		if seconds > 59
  			finalSeconds = seconds % 60
  			minutes = seconds / 60
  			if minutes > 59
  				finalMinutes = minutes % 60
  				finalHours = minutes / 60
  			else
  				finalMinutes = minutes
  			end
  		else
  			finalSeconds = seconds
  		end
  		finalHours = checkNumber(finalHours)
  		finalMinutes = checkNumber(finalMinutes)
  		finalSeconds = checkNumber(finalSeconds)
  		string = finalHours.to_s + ':' + finalMinutes.to_s + ':' + finalSeconds.to_s

  		@time_string = string
  	end


  	def checkNumber(number)
  		if number < 10
  			'0' + number.to_s
  		else
  			number
  		end
  	end
end