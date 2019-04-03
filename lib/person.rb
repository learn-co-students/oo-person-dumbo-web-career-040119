require 'pry'
# your code goes here
class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def happiness=(amount)
    @happiness=amount
    if @happiness > 10
      @happiness = 10
    end
    if @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(number)
    @hygiene=number
    if @hygiene > 10
      @hygiene = 10
    end
    if @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def spend(amount)
    @bank_account -= amount
  end

  def take_bath
    self.hygiene=(@hygiene+4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness+2)
    self.hygiene=(@hygiene-3)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness+3)
    friend.happiness=(friend.happiness+3)
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness=(@happiness-2)
      friend.happiness=(friend.happiness-2)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness+1)
      friend.happiness=(friend.happiness+1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
