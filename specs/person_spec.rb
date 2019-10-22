require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class PersonTest < MiniTest::Test

def test_get_name()
  person = Person.new("James", 25)
  assert_equal("James", person.name)
end

def test_get_age()
  person = Person.new("James", 25)
  assert_equal(25, person.age)
end


end
