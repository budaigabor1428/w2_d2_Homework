class River

  def initialize(name, fish)
    @name = name
    @fishes = fish
  end

  def get_name
    @name
  end

  def number_of_fish
    @fishes.size
  end

  def get_fish
    @fishes.pop()
  end
end
