def signup
  puts "Définissez un mot de passe."
  print ">"
  password1 = gets.chomp
  return password1
end

def login(password1)
  puts "Quel est votre mot de passe?"
  print ">"
  password2 = gets.chomp

  while password2 != password1
    puts "Vous vous êtes trompés. Quel est votre mot de passe?"
    print ">"
    password2 = gets.chomp
  end

end

def welcome_screen
  puts "Bienvenue en zone secrète."
end

def perform
  password1 = signup
  login(password1)
  welcome_screen
end

perform