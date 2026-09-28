require "minitest/autorun"

require_relative "question"
require_relative "multiple_choice"

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

   def multiple_choice_test_correct_answer_gives_true
    q = Multiple_Choice.new("Vad är huvudstaden i Norge?", "Oslo", ["Oslo", "lebron", "india"])
    assert_equal "Oslo", q.answer
    q = Multiple_Choice.new("Vad är huvudstaden i Sverige", "Stockholm", ["oslo", "india", "usa", "Stockholm"])
    assert_equal "Stockholm", q.answer
  end

end