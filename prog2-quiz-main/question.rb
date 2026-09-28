
class Question
  attr_reader :prompt, :answer

  def initialize(prompt, answer)
    raise ArgumentError, "prompt must not be empty" if prompt.empty?

    @prompt = prompt
    @answer = answer
  end

  def ask
    puts prompt
    gets.chomp
  end

  def correct?(reply)
    return false if reply.strip.empty?
    return false if answer.strip.empty?

    reply.strip.downcase == answer.downcase
  end

  def hint
    answer[0]
  end

  def to_s
    "#{prompt} (#{answer})"
  end
end