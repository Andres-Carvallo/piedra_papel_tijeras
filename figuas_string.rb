jugador1_valid = false


def square(s)
    s.times do |i|
        s.times do |j|
            print '*'
        end
        print "\n"
    end
end

def triangle(tri)
    v = "*"
    suma = ""
    tri.times do |i|
        suma += v
        
        print "#{suma}" 
        print "\n"
    end
end

def pyramid(py)
    v = "*"
    suma = ""
    py.times do |i|
        suma += v
        print "#{suma}"
        print "\n" 
    end
    py.times do |i|
        (py-i-1).times do |j|
            print "*" 
        end
        print "\n"
    end
end

while !jugador1_valid
    puts 'Seleccione una figura: '
    puts '----------------'
    puts '1. Cuadrado'
    puts '2. Triángulo'
    puts '3. Pirámide'
    puts '4. Salir'

    puts 'Ingrese una opción'
    opcion_jugador1 = gets.chomp
    if opcion_jugador1 == '1' || opcion_jugador1 == '2' || opcion_jugador1 == '3' || opcion_jugador1 == '4'
        jugador1_valid = true
        break if opcion_jugador1 == '4'
    else 
        print "Opción invalida"
        print "\n"
    end        

end



while jugador1_valid == true
    break if opcion_jugador1 == '4'
    puts "Ingrese un numero: "
    
    numero_jugador1 = gets.to_i
    if numero_jugador1 != 0        
        print "\n" 
        if opcion_jugador1 == '1'
            s = numero_jugador1
            square(s)
        elsif opcion_jugador1 == '2'
            tri = numero_jugador1
            triangle(tri)
        elsif opcion_jugador1 == '3'
            pi = numero_jugador1
            pyramid(pi)
        else    
            print "\n"  
        end
        print "\n"
    else    
        puts 'El numero es invalido'
    
    end
    if numero_jugador1 > 0
        jugador1_valid = false 
    end
end



