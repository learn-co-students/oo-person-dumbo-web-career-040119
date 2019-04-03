require 'pry'

class Person
	attr_accessor :happiness_points
	attr_accessor :hygiene_points
	attr_reader :name
	attr_reader :bank_account

	def initialize(name,happiness_points=8,hygiene_points=8, balance = 25)
		@name = name
		@happiness_points = happiness_points
		@hygiene_points = hygiene_points
		@bank_account = balance
	end

	#un settable
	

	def incrementer(curr_points, new_val)
		@new_points = curr_points + new_val
		@new_points.clamp(0, 10)
	end

	def decrementer(curr_points,new_val)
		@new_points = curr_points - new_val
		@new_points.clamp(0, 10)
	end

	def get_paid(increase)
		@bank_account += increase
		"all about the benjamins"
	end

	def withdrawal(decrease)
		@bank_account -= decrease
	end

	def clean?(hygiene_points)
		hygiene_points > 7
	end

	def happy?(happiness_points)
		happiness_points > 7
	end

	def take_bath
		self.hygiene_points = self.incrementer(self.hygiene_points, 4)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.happiness_points = self.incrementer(self.happiness_points, 2)
		self.hygiene_points = self.decrementer(self.hygiene_points, 3)
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness_points = self.incrementer(self.happiness_points, 3)
		friend.happiness_points = friend.incrementer(friend.happiness_points, 3)

		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		case topic
		when "politics"
			self.happiness_points = self.decrementer(self.happiness_points, 1)
			friend.happiness_points = friend.decrementer(friend.happiness_points, 1)
			"blah blah partisan blah lobbyist"
		when "weather"
			self.happiness_points = self.incrementer(self.happiness_points, 1)
			friend.happiness_points = friend.incrementer(friend.happiness_points, 1)
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end

end

codey = Person.new("codey")
brenden = Person.new("Brenden")

binding.pry 