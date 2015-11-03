class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 00
	end
	def time_string
		hours = @seconds/(60*60)
		minutes = (@seconds % (60*60)) / 60
		seconds = (@seconds % (60*60)) % 60
		sprintf("%02d:%02d:%02d", hours, minutes, seconds)
	end
end