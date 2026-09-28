require_relative "question"

questions = [
  Question.new("Vad heter huvudstaden i Norge?", "Oslo"),
  Question.new("Vilket år släpptes Ruby 1.0?", "1996"),
  Question.new("Vad svarar 5.class?", "Integer"),
  Question.new("Är goku peak eller mid?", "peak"),
  Question.new("Vad är 9 + 10?", "21"),
  Question.new("Är Ronaldo goaten?", "ja"),
]

score = 0

questions.each do |q|
  reply = q.ask

  if q.correct?(reply)
    puts "Rätt!"
    score += 1
  else
    puts "Fel! Ledtråd: Svaret börjar på #{q.hint}"
    reply = q.ask

    if q.correct?(reply)
      puts "Rätt!"
      score += 1
    else
      puts "Fel. Rätt svar: #{q.answer}"
    end
  end
end

puts "#{score} av #{questions.length} rätt."