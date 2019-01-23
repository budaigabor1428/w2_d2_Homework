require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../fish.rb' )
require_relative( '../river.rb' )

class TestRiver < Minitest::Test

  def setup
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Kirk")
    @river = River.new("Nile", [@fish1,@fish2])
  end

  def test_river_name
    assert_equal("Nile", @river.get_name)
  end

  def test_initial_state
    assert_equal(2, @river.number_of_fishes)
  end

  def test_can_get_fish
    fish = @river.get_fish
    assert_equal(@fish_2.name, fish.name)
  end

end
