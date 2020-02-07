def start
  puts "Vous êtes en bas d'un escalier de 10 marches."
  step = 0
  return step
end

def play(step)

  if step == 10
    return
  end

  puts "Voulez-vous jouer un tour? (o pour oui)?"
  print ">"
  input = gets.chomp

  if input == "o"
    dice = rand(1..6)
    puts dice
    case dice
      when 5, 6
        step = step + 1
        puts "Tu avances d'une marche et tu es sur la marche #{step}."
        play(step)
      when 1
        step = step - 1
        if step <= 0
          step = 0
        end
        puts "Tu descends d'une marche et tu es sur la marche #{step}."
        play(step)
      when 2, 3, 4
        puts "Il ne se passe rien et tu es toujours sur la marche #{step}."
        play(step)
    end
  end

end

def game_end
  puts "Tu es sur le marche 10, bravo! C'est la fin du jeu."
end

def average_time
  #100.times do
  2.times do
    perform
  end
  # rajouter un count dans le play? Et diviser par 100. Puis puts
end

def perform
  step = start
  play(step)
  game_end
end

average_time