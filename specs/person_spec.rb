require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Stuart", 26)
    @person2 = Person.new("Iona", 27)
  end

  def test_person_has_name
    assert_equal("Stuart", @person1.name())
  end

end
