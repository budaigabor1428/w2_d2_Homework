require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../fish.rb' )

class TestFish < Minitest::Test

  def test_fish_name
    fish = Fish.new("Nemo")
    assert_equal("Nemo",fish.name)
  end

end
