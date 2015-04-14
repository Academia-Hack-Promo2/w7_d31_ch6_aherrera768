# Crear un clon de Akinator pero solo para animales en ruby (akinator.rb) preguntando y validando la informacion suministrada
# por los usuarios hasta que finalmente se obtenga un animal final.

# Para que este reto sea valido se debe tomar en cuenta:
# 1. No se deben usar bucles ni estructuras iterativas.
# 2. Debe estar validada toda la informacion cargada por el usuario con su respectivo feedback (si el juego termina repentinamente o no se explica al usuario el tipo de error se tomara como un fallo en la entrega)
# 3. No es necesario contemplar todos los animales existente, pero si es necesario que el juego sea al menos divertido (al menos 10 animales con caracteristicas distintas al final de cada set de preguntas).

# Para mas referencia revisar http://es.akinator.com

def hello
  puts "\n[][][][][][][][][][][][][][][][][][][][][][][][][][]"
  puts "    ###### Bienvenido a Akinator Animals ######"
  puts "[][][][][][][][][][][][][][][][][][][][][][][][][][]\n"
  puts "\n=> Escoje en tu mente galactica algunos de estos 10 animales y te dire cual haz almacenado en tu mente."
  puts "\n Rinoceronte de Java" #4 patas #lento #clima calido
  puts " Leopardo de las nieves" #4 patas #rapido #clima frio
  puts " Tigre" #4patas #rapido #clima calido
  puts " Atún rojo"
  puts " Elefante asiático" #4 patas #lento #clima calido
  puts " Vaquita marina"
  puts " Gorila de montaña"
  puts " Delfín del rio Irrawaddy"
  puts " Orangután de Sumatra"
  puts " Tortuga Baula" #4 patas #lenta #clima tropical 
end

def game
  puts "\nA continuacion te mostraremos una serie de preguntas, en las cuales podras responder con 'si' o 'no'"
  puts "\n=> ¿Tiene 4 patas?"
  si = gets.chomp.to_s
  if check_game(si) && si == "si"
    puts "\n=> ¿Es un animal rapido (normalmente)?"
    si = gets.chomp.to_s
    if check_game(si)
      puts "\n=> ¿Pertenece al clima calido?"
      si = gets.chomp.to_s
      if check_game(si)
        puts "\n=> ¿Posee cuernos?"
        si = gets.chomp.to_s
        if check_game(si)
          puts "\nTu animal es el Rinoceronte de Java"
        else
          puts "\nTu animal es el Tigre"
        end
      end
    end
  end

else
  puts "\n=> ¿Es maritimo?"
  no = gets.chomp.to_s
  if check_game(no) && no == "no"
    puts "\nTu animal es el Leopardo de las nieves"
  elsif
    puts "\nTu animal es la Tortuga Baula"
  else
    puts "\nTu animal es el Atún rojo"
  end
end


  # if check_game(no)
  #   puts ""
    
  # end


def check_game(game)
  if game == "si" || game == "no"
    return true
  else 
    puts "\nRespnde un 'si' o 'no'..."
    puts 'GALLO! Intenta de nuevo'
    return game
  end
end

def main
  hello
  game
end
main