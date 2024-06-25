class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def hello
    pp "hello #{@first_name + @last_name}"
  end

end


person = Person.new("Jose", "MDO")


person.hello
