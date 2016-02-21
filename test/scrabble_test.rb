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

  def test_it_can_score_empty_word_as_0
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_can_score_nil_word_as_0
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_can_score_made_up_word
    assert_equal 16, Scrabble.new.score("dragonx")
    assert_equal 25, Scrabble.new.score("wvzfb")
  end


end
