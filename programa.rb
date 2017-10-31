=begin
Requisitos ()
1.- Salude a los usuarios
2.- pida una cantidad al usuario
3.- calcula importe
4.- haga descuentos por cantidad

def saludo
    puts "Bienvenido..."
end

def pedido
    print "cuantos cursos quieres? "
    gets.to_i
end

def importe numcursos
    numcursos * 10
end

saludo
numcursos = pedido
precio = importe numcursos
puts "para #{numcursos} cursos el importe es #{numcursos * 10}"




answer = ask "como te llamas?", "number"
answer = ask "como te llamas?"
p answer

=end

def ask question, kind="string"
    print question + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end

def ask_nombre persona
    persona["nombre"] = ask "como te llamas? "
end

def ask_telefonos persona
    loop do
        persona["telefonos"].push(ask "dime telefono:")
        seguir = ask "quiere introducir otro telefono? n para salir"
        if (seguir == "n")
            break
        end
    end
end

def ask_persona persona
    ask_nombre persona
    ask_telefonos persona
end

def add_contactos lista
    seguir = ""
    while seguir != "n"
        seguir = ask "quiere introducir contacto? n para salir"
        if (seguir != "n")
            persona = {"nombre" => "", "telefonos" => []}
            ask_persona persona
             lista.push(persona)
        end
    end
end

lista_persona = []
add_contactos lista_persona

lista_persona.each do |persona|
  puts "Nombre: #{persona["nombre"]}"
  persona["telefonos"].each do |telefono|
    puts "telefono: #{telefono}"
  end
end

