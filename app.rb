require './rental'
require './classroom'
require './teacher'
require './person'
require './book'
require './student'

class App
  def initialize
    super
    @books = []
    @persons = []
    @rentals = []
  end
end
