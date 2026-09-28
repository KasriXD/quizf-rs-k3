require "minitest/autorun"

require_relative "question"

class QuestionTest < Minitest::Test
  def test_correct_answer_gives_true
    q = Question.new("Vad är huvudstaden i Norge?", "Oslo")
    assert_equal "Oslo", q.answer
    q = Question.new("Vad är huvudstaden i Sverige", "Stockholm")
    assert_equal "Stockholm", q.answer
  end

  def test_correct_hint_gives_true
    q = Question.new("Vad är huvudstaden i Norge?", "Oslo")
    assert_equal "O", q.hint
    q = Question.new("Vad är huvudstaden i Sverige", "Stockholm")
    assert_equal "S", q.hint
  end
end