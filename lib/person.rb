# your code goes here
class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  # def initialize(name, bank_account, happiness, hygiene)
  #   @name = name
  #   @bank_account = bank_account
  #   @happiness = happiness
  #   @hygiene = hygiene
  # end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene= 8
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
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

  def call_friend(person)
    # @happiness += 3
    # self.happiness=(@happiness)
    self.happiness += 3
    person.happiness += 3
    # person.happiness=(person.happiness)
    # puts "Hi Felix! It's Stella. How are you?"
    "Hi #{person.name}! It's #{self.name}. How are you?"
    # puts "Hi #{self.name}! It's #{person.name}. How are you?"
  end

  def start_conversation(convo, topic)
    if topic == 'politics'
      @happiness -= 2
      self.happiness=(@happiness)
      convo.happiness -= 2
       'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      @happiness += 1
      self.happiness=(@happiness)
      convo.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

  def hygiene=(number) #setter method
    new_number = 0
    if number > 10
      new_number = 10
    elsif number < 0
      new_number = 0
    else
      new_number = number
    end
    @hygiene = new_number
  end

  def happiness=(number)
    new_number = 0
    if number > 10
      new_number = 10
    elsif number < 0
      new_number = 0
    else
      new_number = number
    end
    @happiness = new_number
  end

end
