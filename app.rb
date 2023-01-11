require './rental'
require './classroom'
require './teacher'
require './person'
require './book'
require './student'
require 'json'
require './data/data'

class App
  def initialize
    super
    @books = []
    @persons = []
    @rentals = []
  end
end
