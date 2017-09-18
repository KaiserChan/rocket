require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_rocket_random_name
    #act
    result = @rocket.name
    #assert
    assert result
  end

  def test_rocket_given_name
    #act
    result = @rocket.name=("Sunny Side Up")
    #assert
    assert result
  end

  def test_rocket_random_colour
    #act
    result = @rocket.colour
    #assert
    assert result
  end

  def test_rocket_given_colour
    #act
    result = @rocket.colour=("Duck poop green")
    #assert
    assert result
  end

  def test_rocket_flying_not_flying
    #act
    result = @rocket.flying?
    #assert
    assert_equal result, false
  end

  def test_rocket_flying_yes_flying
    # #arrange
    # @flying = true
    # #act
    # result = @rocket.flying?
    # #assert
    # assert_equal result, true
  end

  def test_rocket_no_liftoff
    #act
    result = @rocket.lift_off
    #assert
    assert result
  end


  def test_rocket_yes_liftoff
    #arrange
    @flying = true
    #act
    result = @rocket.lift_off
    #assert
    assert result
  end

  def test_rocket_not_land
    #arrange
    @flying = true
    #act
    result = @rocket.land
    #assert
    refute result
  end

  def test_rocket_land
    @flying = false
    #act
    result = @rocket.land
    #assert
    refute result
  end
end
