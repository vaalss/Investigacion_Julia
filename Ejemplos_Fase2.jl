#Tipos de datos básicos
entero = 10
flotante = 3.14
string = "Fase 2"
booleano = true

println("Tipos de datos básicos:")
println("Entero: ", entero)
println("Flotante: ", flotante)
println("String: ", string)
println("Booleano: ", booleano)

#Estructuas de datos 
println("\nEstructuras de datos:")

#Array (vector)
println("Array:")
vector = [1, 2, 3, 4, 5]
println("Vector: ", vector)
#Insertar un elemento 
push!(vector, 6)
#Acceder a un elemento
println("Elemento en posición 3: ", vector[3])

#Diccionario
println("\nDiccionario:")
estudiante = Dict("nombre" => "Valeria", "carne" => 25086)
#Acceder a un valor por clave
println("Nombre: ", estudiante["nombre"])
#Agregar nuevo dato
estudiante["carrera"] = "Ingeniería en Computación"
println("Diccionario: ", estudiante)

#Tupla
println("\nTupla:")
tupla = (10, 20, 30, 40, 50)
println("Tupla: ", tupla)
#Acceder a un elemento
println("Tercer elemento: ", tupla[3])

#Set
println("\nSet:")
conjunto1 = Set([1, 2, 2, 3, 4])
conjunto2 = Set([3, 4, 5, 6])
println("Conjunto 1: ", conjunto1)
println("Conjunto 2: ", conjunto2)
#Unión de conjuntos
union_conjuntos = union(conjunto1, conjunto2)
println("Unión de conjuntos: ", union_conjuntos)
#Intersección de conjuntos
interseccion_conjuntos = intersect(conjunto1, conjunto2)
println("Intersección de conjuntos: ", interseccion_conjuntos)
