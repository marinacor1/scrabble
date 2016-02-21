gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_single_letter
    assert_equal 1, Scrabble.new.score("A")
    assert_equal 4, Scrabble.new.score("F")
  end


end
