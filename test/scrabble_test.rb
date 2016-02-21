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

  def test_it_can_score_a_single_letter_regardless_of_case
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_word
    assert_equal 8, Scrabble.new.score("hello")
  end

  def test_it_can_score_word_regardless_of_case
    assert_equal 8, Scrabble.new.score("HeLlO")
  end


end
