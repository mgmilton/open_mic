require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_joke_instantiates
    joke = Joke.new
    assert_instance_of Joke, joke
  end

end
