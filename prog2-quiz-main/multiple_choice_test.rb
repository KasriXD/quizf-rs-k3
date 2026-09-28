require_relative "multiple_choice"

questions = [
  Multiple_Choice.new("Vilket år släpptes Ruby 1.0?", "1996", ["1997", "1967", "1969", "2030"]),
  Multiple_Choice.new("Vad heter huvudstaden i Norge", "Oslo", ["Oslo", "Stockholm", "Texas", "Ronaldo"]),
  Multiple_Choice.new("Vad svarar 5.class?", "Integer", ["Integer", "String", "boolean", "hash"]),
  Multiple_Choice.new("Hur beskrivs Goku?", "mid", ["peak", "mid", "overrated", "goated"]),
  Multiple_Choice.new("Vad är 9 + 10?", "21", ["21", "19", "4", "67"]),
  Multiple_Choice.new("Är Ronaldo goaten?", "definitivt", ["ja", "nej", "kanske", "definitivt"]),
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