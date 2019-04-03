require 'pry'
require 'clamp'

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8.clamp(0, 10)
    @hygiene = 8.clamp(0, 10)
  end


  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hapiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{name} How are you?"
  end

  def start_conversation(person, topic)
    case topic
      when "politics"
        person.hapiness -= 1
        self.hapiness -= 1
        return "blah blah partisan blah lobbyist"
      when "weather"
        person.hapiness += 1
        self.hapiness += 1
        return "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end

end
