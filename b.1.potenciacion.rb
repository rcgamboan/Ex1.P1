#Pregunta 1.b.i Parcial 1 CI3641
#Elaborado por Roberto Gamboa 16-10394

# Programa que implementa la potenciacion modulada dado tres numero a b y c
# Se implementa la solucion de forma iterativa y de forma recursiva

# Se solicita al usuario que introduzca los numeros

puts("A continuacion introduzca los valores para a , b y c.")
puts("Recuerde que deben ser numeros enteros no negativos.")
print("\n")
print "Introduzca el valor de a : "
a = gets.to_i
print "Introduzca el valor de b : "
b = gets.to_i
print "Introduzca el valor de c (debe ser mayor o igual a 2) : "
c = gets.to_i
print("\n")

# En caso que no se cumplan las condiciones requeridas, se termina el programa
if c < 2
    puts "Error, c debe ser mayor o igual a 2"
    exit(1)
end

if a < 0 || b < 0 || c < 0
    puts "Error, a , b y c deben ser mayores que cero"
    exit(1)
end

# funcion recursiva para calcular la potencia modulada
def potenciacionR(a,b,c)

    if b == 0
        1
    else
        ((a % c) * potenciacionR(a,b-1,c)) % c
    end

end

# funcion iterativa para calcular la potencia modulada
def potenciacionI(a,b,c)

    if b == 1
        return a % c
    end
    i, acm = 0 , 1
    while i < b    
        acm *= a % c
        i += 1
    end
    acm = acm % c
end

puts("El resultado de la potenciacion modulada dado ")
print("a = #{a} , b = #{b} y c = #{c} es : ")
puts(potenciacionR(a,b,c))
