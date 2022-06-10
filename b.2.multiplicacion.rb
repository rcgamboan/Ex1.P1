#Pregunta 1.b.ii Parcial 1 CI3641
#Elaborado por Roberto Gamboa 16-10394

# Implementacion de un modulo para multiplicar matrices
# Inicialmente se le pide al usuario que introduzca los datos de las matrices a multiplicar
# Y luego se ejecuta la operacion y se muestra el resultado por terminal
require 'matrix'


print("Introduzca el numero de filas de la matriz 1: ")
filas1 = gets.to_i
print("Introduzca el numero de columnas de la matriz 1: ")
columnas1 = gets.to_i
print("Introduzca el numero de filas de la matriz 2: ")
filas2 = gets.to_i
print("Introduzca el numero de columnas de la matriz 2: ")
columnas2 = gets.to_i

if filas1 <= 0 || columnas1 <= 0 || filas2 <= 0 || columnas2 <= 0
    puts("Los numeros de filas y columnas deben ser mayores a cero.")
    exit(1)
end

if columnas1 != filas2
    puts "Error, el numero de columnas de la matriz 1 debe ser igual al numero de filas de la matriz 2"
    exit(1)
else
    m1 = Array.new(filas1){ Array.new(columnas1, 0) }
    m2 = Array.new(filas2){ Array.new(columnas2, 0) }
end

i , j = 0 , 0
while i < filas1
    while j < columnas1
        print("Introduzca el elemento [#{i+1}][#{j+1}] de la matriz 1: ")
        m1[i][j] = gets.to_i
        j += 1
    end
    i += 1
    j = 0
end

puts "\n"

i , j = 0 , 0
while i < filas2
    while j < columnas2
        print("Introduzca el elemento [#{i+1}][#{j+1}] de la matriz 2: ")
        m2[i][j] = gets.to_i
        j += 1
    end
    i += 1
    j = 0
end

# Funcion para multiplicar dos matrices m1 y m2 dadas en forma de arreglos
# Tambien se puede usar la libreria matrix de Ruby para transformar los arreglos en matrices
# y ejecutar de esa forma la multiplicacion
def multiplicacion(m1,m2)

    i , j, k = 0 , 0 , 0
    
    filas1 = m1.length()
    columnas1 = m1[0].length()
    columnas2 = m2[0].length()

    resultado = Array.new(filas1){ Array.new(columnas2, 0) }

    while i < filas1

        while j < columnas1

            while k < columnas1
                resultado[i][j] = resultado[i][j] + (m1[i][k] * m2[k][j])
                k+=1
            end
            k = 0
            j += 1
        end
        i += 1
        j = 0
    end

    return resultado
end

mult = multiplicacion(m1,m2)
# matriz1 = Matrix[*m1]
# matriz2 = Matrix[*m2]
# resultado = m1 * m2
puts("El resultado de la multiplicacion de matrices es: ")
puts Matrix[*mult]

