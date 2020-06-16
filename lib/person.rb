# your code goes here
require 'pry'

class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
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
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def clean?
    @hygiene > 7
  end
  
  def happy?
    @happiness > 7
  end
  
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(buddy)
    self.happiness += 3
    buddy.happiness += 3
    return "Hi #{buddy.name}! It's #{@name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end