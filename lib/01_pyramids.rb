def full_pyramid
  puts "Salut! Combien d'étages veux-tu?"
  print ">"
  floors = gets.to_i
  puts "Voici la pyramide:"

  i = 1
  while i <= floors * 2
  puts " " * (floors - (i/2)) + "#" * i
  i = i + 2
  end
end

def wtf_pyramid
  puts "Salut! Combien d'étages veux-tu? (choisis un nombre impair)"
  print ">"
  floors = gets.to_i

  case floors % 2

  when 0
    puts "Ton nombre est pair"
    return

  when 1
  puts "Voici la pyramide:"

  i = 1

    while i <= floors
    puts " " * (floors - (i/2)) + "#" * i
    i = i + 2
    end

  i = i - 4

    while i >= 1
    puts " " * (floors - (i/2)) + "#" * i
    i = i - 2
    end

  end

end

wtf_pyramid