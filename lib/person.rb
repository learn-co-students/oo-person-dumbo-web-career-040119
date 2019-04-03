require 'pry'
require 'spec_helper'

class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_reader :name, :bank_account, :happiness, :hygiene

  def bank_account=(amount)
    @bank_account += amount
  end

  def deposit(amount)
    @bank_account += amount
  end

  # def spend(amount)
  #   @bank_account -= amount
  # end

def happiness=(amount)
  new_amount = 0
  if amount > 10
    new_amount = 10
  elsif amount < 0
    new_amount = 0
  else
    new_amount = amount
  end
    @happiness = new_amount
  end

  # def get_happy(amount)
  #   @happiness += amount
  #   if @happiness > 10
  #     @happiness = 10
  #   end
  #   @happiness
  # end
  #
  # def get_sad(amount)
  #   @happiness -= amount
  #   if @happiness < 0
  #     @happiness = 0
  #   end
  #   @happiness
  # end


def hygiene=(amount)
  @hygiene = amount
  if @hygiene > 10
    @hygiene = 10
  elsif
    @hygiene < 0
    @hygiene = 0
  else
    @hygiene = amount
  end
end

  def clean?
   @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(amount)
    deposit(amount)
    "all about the benjamins"
  end

  def take_bath
    washed = @hygiene + 4
    self.hygiene=(washed)
     "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
   endorphins = @happiness + 2
   sweat = @hygiene - 3
   self.happiness=(endorphins)
   self.hygiene=(sweat)
     "♪ another one bites the dust ♫"
   end

   def call_friend(friend)
     gab = @happiness + 3
     gab_friend = friend.happiness + 3
     self.happiness=(gab)
     friend.happiness=(gab_friend)
     "Hi #{friend.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(caller, topic)
     if topic == "politics"
       talk = @happiness - 2
       talk_friend = @happiness - 2
       self.happiness=(talk)
       caller.happiness=(talk_friend)
       "blah blah partisan blah lobbyist"
     elsif topic == "weather"
       talk = @happiness + 1
       talk_friend = @happiness + 1
       self.happiness=(talk)
       caller.happiness=(talk_friend)
       "blah blah sun blah rain"
     else
       "blah blah blah blah blah"
     end
   end

 end

  Jack = Person.new("Jack")
  John = Person.new("John")
