class Multiple_Choice
  attr_reader :prompt, :answer, :alternativ

  def initialize(prompt, answer, alternativ)
    raise ArgumentError, "prompt must not be empty" if prompt.empty?
    raise ArgumentError, "answer must not be empty" if answer.empty?
    raise ArgumentError, "alternativ must not be empty" if alternativ.empty?

    @prompt = prompt
    @answer = answer
    @alternativ = alternativ
  end

  def ask
    puts prompt
    puts alternativ
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