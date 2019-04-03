require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    #binding.pry
  end
end
