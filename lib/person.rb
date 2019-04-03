class Person

  attr_accessor :happiness, :hygiene, :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
  binding.pry
end

def clean?

end
end
