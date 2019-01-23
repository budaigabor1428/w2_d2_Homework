class Bear
  attr_accessor :name, :type

  def initialize(name,type)
    @name = name
    @type = type
    @food = []
  end

  def roar
    return "Hello"
  end

  def food_collection
    @food.length
  end

  # def take_fish_from_river
  #
  # end

end
