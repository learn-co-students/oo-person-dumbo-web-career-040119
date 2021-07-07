

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(num) #setter method
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

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=(@hygiene)

    @happiness += 2
    self.happiness=(@happiness)

    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    self.happiness=(@happiness)
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)

    if topic == "politics"
      @happiness -= 2
      self.happiness=(@happiness)
      friend.happiness -=2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      @happiness += 1
      self.happiness=(@happiness)
      friend.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end
