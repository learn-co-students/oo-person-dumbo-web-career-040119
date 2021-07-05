require 'pry'

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # happiness setter method
  def happiness=(num)
    new_num = 0
    if num > 10
      new_num = 10
    elsif num < 0
      new_num = 0
    else
      new_num = num
    end
    @happiness = new_num
  end

  # hygiene setter method
  def hygiene=(num)
    new_num = 0
    if num > 10
      new_num = 10
    elsif num < 0
      new_num = 0
    else
      new_num = num
    end
    @hygiene = new_num
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  # In order to call hygiene= from above we have to put self
  # If you just wrote self it would return the class it is inside.
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  # Do the same as above, but for both @happiness and @hygiene
  def work_out
    self.happiness +=2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

#self  --> Class
  def call_friend(friend)
    #self --> instance
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
