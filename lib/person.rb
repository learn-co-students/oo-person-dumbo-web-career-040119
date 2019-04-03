require 'pry'

class Person

attr_accessor :bank_account, :happiness_index, :hygiene_index #why doesnt it work without attributes
attr_reader :name

  def initialize(name, dollarz = 25, happiness_index =8, hygiene_index=8)
    @name = name
    @dollarz = dollarz
    @happiness_index = happiness_index
    @hygiene_index = hygiene_index
  end

  def name
    @name
  end

  def bank_account
    @dollarz
  end

  def bank_account=(dollarz)
    @dollarz = dollarz
  end

  def happiness
     @happiness_index
   end

   def happiness=(happiness_index)
       @happiness_index = happiness_index
      @happiness_index = 10 if happiness_index > 10 #why if peter.happiness=(11) it prints out 11 instead of 10 - and why does test work
      @happiness_index = 0 if happiness_index <= 0
     end

    def hygiene
      @hygiene_index
    end

    def hygiene=(hygiene_index)
      @hygiene_index = hygiene_index
     @hygiene_index = 10 if hygiene_index > 10 #why if peter.happiness=(11) it prints out 11 instead of 10 - and why does test work
     @hygiene_index = 0 if hygiene_index <= 0
    end

    def happy?
       @happiness_index > 7
    end

    def clean?
       @hygiene_index > 7 #what is non-attribute
    end

    def get_paid(salary)
      self.bank_account += salary
       'all about the benjamins'
    end

    def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
      self.happiness += 3
      person.happiness +=3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      people = [self, person]
      if topic == 'politics'
        people.each do |participant|
        participant.happiness -= 2
      end
        return "blah blah partisan blah lobbyist"
      elsif topic == 'weather'
        people.each do |participant|
        participant.happiness += 1
      end
      return "blah blah sun blah rain"
    else return "blah blah blah blah blah"
    end
  end

binding.pry

end
