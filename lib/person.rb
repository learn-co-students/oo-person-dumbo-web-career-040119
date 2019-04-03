require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

# initializing method
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    #binding.pry
  end
# happiness= setter method
  def happiness=(num)
    limited_num = 0
    if num > 10
      limited_num = 10
    elsif num < 0
      limited_num = 0
    else
      limited_num = num
    end
    @happiness = limited_num
  end

# hygiene= setter method
  def hygiene=(num)
    limited_num = 0
    if num > 10
      limited_num = 10
    elsif num < 0
      limited_num = 0
    else
      limited_num = num
    end
    @hygiene = limited_num
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3

    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person_to_chat, topic)
    if topic == "politics"
      self.happiness -= 2
      person_to_chat.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person_to_chat.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

### END OF CLASS ###
end
