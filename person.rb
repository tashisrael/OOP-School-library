require_relative('./nameable')
require_relative('./rental')

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_accessor :name, :age, :books, :rentals
  attr_reader :id

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name.correct_name
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end
end
