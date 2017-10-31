# la última sentencia del método es el return
def suma(primero, segundo)
    primero + segundo
end

def resta primero, segundo
    return primero - segundo
end

=begin
suma(50, 100)
resta 50, 100

def say param
    puts "hola", param
end
say "cesar"

num =suma suma(50, 100), 3
puts num

num = resta num, 3
puts num

def pedir num
    puts "numero #{num}:"
    gets.to_f
end

a = pedir "12"
b = pedir "7"
c = pedir "5"
d = pedir "10"

def media a, b, c, d
    (a + b + c + d) / 4
end

puts "media: #{media a, b, c, d}"
#puts "media: " + (media a, b, c, d).to_s

puts 'Cuando escribes \t en un string con comillas dobles se muestra así:'
puts "David\tPiqué"
puts "Cuando escribes \\n en un string con comillas dobles se muestra así:"
puts "David\nPiqué"

def repetir cadena, times
    fail "times debe ser 1 o mayor que 1" if times < 1
    counter = 0
    loop do
        #TODO
        puts cadena
        counter+=1
        if (counter == times)
            break
        end
    end
end

repetir "hola", -3

def loteria max
    fail "times debe ser 1 o mayor que 1" if max < 1
    num_aleatorio = Random.new.rand(max)
    loop do
        puts "intenta acertar:"
        input = gets.chomp
        if (input == "e")
            puts "el numero era #{num_aleatorio}"
            break
        end
        num = input.to_i
        if (num == num_aleatorio)
            puts "has acertado"
            break
        end
        if (num > max)
            puts "tiene que ser menor a #{max}"
        end
        puts "sigue probando"
    end
    puts "adios"
end

loteria 5

=end

array = [0,1,2,3,4]

array.each do |valor|
    valor += 1
    puts "valor #{valor}"
end

=begin
puts array.inspect

hash = {"name" => "pixelpro", "location" => "Madrid"}
hash.each do |value|
    puts "la clave #{value}"
end

num = 4
num.times do |item|
    puts "iteracion #{item}"
end

for item in ["1", "cesar"]
    puts item
end
=end