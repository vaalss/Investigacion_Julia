# Valeria Hernández Maldonado 25086

# Evaluación de expresiones mediante el uso de una pila
# Las expresiones se reciben en infix y se deben de transformar a postfix

# Función para manejar la prioridad de operaciones
function prioridad(op)
    if op == "+" || op == "-"
        return 1
    elseif op == "*" || op == "/"
        return 2     # Da mayor prioridad a la multiplicación y división
    else
        return 0
    end
end

# Función para pasar de infix a postfix
function infix_to_postfix(expresion)
    salida = [] # Construye el resultado
    pila = [] # Guarda temporalmente los operadores

    tokens = split(expresion) 

    for token in tokens
        if occursin(r"^\d+$", token) # Verifica si el token contiene únicamente dígitos
            push!(salida, token)
        
        elseif token == "("
            push!(pila, token)
        
        elseif token == ")"         # Cuando encuentra el paréntesis de cierre
            while pila[end] != "("  # Mete todos los operadores entre "(" y ")" a salida
                push!(salida, pop!(pila))
            end
            pop!(pila)
        
        else 
            while !isempty(pila) && prioridad(pila[end]) >= prioridad(token) # Si hay un operador de mayor (o igual) prioridad en pila
                push!(salida, pop!(pila))                                    # Lo envía a salida antes que el actual
            end
            push!(pila)
        end
    end
    
    while !isempty(pila) # Agrega todos los operadores restantes a salida
        push!(salida, pop!(pila))
    end

    return salida
end

# Función para evaluar expresión postfix
function evaluar_postfix(postfix)
    pila = []

    for token in postfix
        if occursin(r"^\d+$", token) # Si es un número se guarda en pila como un entero
            push!(pila, parse(Int, token))
        
        else
            b = pop!(pila)
            a = pop!(pila)

            if token == "+"
                push!(pila, a + b)
            elseif token == "-"
                push!(pila, a - b)
            elseif token == "*"
                push!(pila, a * b)
            elseif token == "/"
                push!(pila, a/b)
            end
        end
    end

    return pila
end

# Programa principal
expresion = "3 + 5 * ( 2 + 1 )"

postfix = infix_to_postfix(expresion)
println("Postfix: ", postfix)

resultado = evaluar_postfix(postfix)
println("Resultado: ", resultado)