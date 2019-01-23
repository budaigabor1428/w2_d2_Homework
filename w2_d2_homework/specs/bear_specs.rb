require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../bear.rb' )
require_relative( '../fish.rb' )
require_relative( '../river.rb' )

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Bob","Polar")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Kirk")
    @river = River.new("Nile", [@fish_1,@fish_2])
  end

  def test_bear_name
    assert_equal("Bob", @bear.name)
  end

  def test_bear_food
    assert_equal(0,@bear.food_collection)
  end

  def test_bear_take_fish_from_river
    @bear.take_fish_from_river(@river)
    assert_equal(1,@bear.food_collection)
  end


end
