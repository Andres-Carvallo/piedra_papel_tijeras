opcion_jugador1 = '0' 
opcion_jugador2 = '0'

jugador1_valid = false
jugador2_valid = false

while !jugador1_valid
    puts 'Turno jugador uno: '
    puts '----------------'
    puts '1. Piedra'
    puts '2. Papel'
    puts '3. Tijeras'
    puts '4. Salir'

    puts 'Ingrese una opción'
    opcion_jugador1 = gets.chomp
    if opcion_jugador1 == '1' || opcion_jugador1 == '2' || opcion_jugador1 == '3' || opcion_jugador1 == '4'
        print "\n"
        jugador1_valid = true
        break if opcion_jugador1 == '4'
    else 
        print "Opción invalida"
        print "\n"
    end        
    if opcion_jugador1 == '4'
        break
    end
end

while !jugador2_valid && opcion_jugador1 != '4'
    puts 'Turno jugador dos: '
    puts '----------------'
    puts '1. Piedra'
    puts '2. Papel'
    puts '3. Tijeras'
    puts '4. Salir'
    puts 'Ingrese una opción'
    opcion_jugador2 = gets.chomp

    break if opcion_jugador2 == '4'

    if opcion_jugador2 == '1' || opcion_jugador2 == '2' || opcion_jugador2 == '3' || opcion_jugador2 == '4'
        jugador2_valid = true         
        if (opcion_jugador1 == '1' && opcion_jugador2 == '1') || (opcion_jugador1 == '2' && opcion_jugador2 == '2') || (opcion_jugador1 == '3' && opcion_jugador2 == '3')
            puts 'empate'
        elsif (opcion_jugador1 == '1' && opcion_jugador2 == '3') || (opcion_jugador2 == '1' && opcion_jugador1 == '3')
            puts 'Piedra gana a tijeras'
        elsif (opcion_jugador1 == '2' &&  opcion_jugador2 == '1') || (opcion_jugador2 == '2' &&  opcion_jugador1 == '1')
            puts 'Papel gana a piedra'
        elsif (opcion_jugador1 == '3' && opcion_jugador2 == '2') || (opcion_jugador2 == '3' && opcion_jugador1 == '2')
            puts 'Tijera gana a papel'
        elsif opcion_jugador1 == '4' || opcion_jugador2 == '4'
            puts 'Saliendo..'
        else 
            puts "\n" 
        end
    else 
        puts 'Opción inválida'
        
    end
end

