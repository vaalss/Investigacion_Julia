# Registro de calificaciones

# Diccionario para almacenar estudiantes y sus notas (en vectores)
estudiantes = Dict(
    "Jose" => [90, 100, 98],
    "Sebastián" => [92, 87, 79],
    "Jorge" => [100, 96, 94]
)

# Cálculo de promedio 
function calcular_promedio(notas)
    return sum(notas) / length(notas)
end

# Nota mayor
function nota_mayor(notas)
    return maximum(notas)
end

# Nota menor
function nota_menor(notas)
    return minimum(notas)
end

# Recorrido del diccionario
function main()
    suma_promedios = 0.0
    cantidad_estudiantes = length(estudiantes)

    for (nombre, notas) in estudiantes

        promedio = round(calcular_promedio(notas), digits=2)
        mayor = nota_mayor(notas)
        menor = nota_menor(notas)

        println("Estudiante: ", nombre)
        println("Notas: ", notas)
        println("Promedio: ", promedio)
        suma_promedios += promedio
        println("Nota mayor: ", mayor)
        println("Nota menor: ", menor)
        println()
    end

    promedio_general = suma_promedios / cantidad_estudiantes

    println("Promedio general: ", promedio_general)

end

main()