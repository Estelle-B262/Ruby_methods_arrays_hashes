def start
  puts "Vous êtes en bas d'un escalier de 10 marches."
  step = 0
  return step
end

def play(step)

  turns = 0

  while step < 10
    dice = rand(1..6)
    puts dice
    case dice
      when 5, 6
        step = step + 1
        puts "Tu avances d'une marche et tu es sur la marche #{step}."
      when 1
        step = step - 1
        if step <= 0
          step = 0
        end
        puts "Tu descends d'une marche et tu es sur la marche #{step}."
      when 2, 3, 4
        puts "Il ne se passe rien et tu es toujours sur la marche #{step}."
    end
  turns = turns + 1
  end
  puts "#{turns} tours"
  return turns
end

def game_end
  puts "Tu es sur le marche 10, bravo! C'est la fin du jeu."
end

def average_finish_time
  total_turns = 0
  100.times do
    turns = perform
    total_turns = total_turns + turns
  end
  puts "#{total_turns} tours totaux en 100 jeux, cela fait une moyenne de #{total_turns / 100} tours par jeu."
end

def perform
  step = start
  turns = play(step)
  game_end
  return turns
end

average_finish_time