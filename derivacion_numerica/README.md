# Derivacion numerica:
> Metodos usados para encontrar las derivadas de una funcion

> Este directorio contiene un archivo para cada metodo correspondiente con su respectivo codigo y ademas hay un archivo llamado `example_function` donde se declara la funcion para la cual se estan buscando raices, si se desea cambiar la funcion que se evalua, este archivo debe ser modificado


------------------------------------------------------------

### Derivada primera:

* Datos                      
    - Una funcion `f`
    - Una serie de valores de `x` y sus respectivos valores de `y`
    - El paso llamado `h`
    > El valor de `h` puede ser calculado como la distancia entre dos puntos consecutivos de la serie de valores de `x`(siempre debe ser el mismo paso para todos los puntos)

* Casos
  

    Referencia: $f_{s}$ es el valor de la funcion en el valor de `x` seleccionado
    - ### Hacia adelante
        >Se usa `unicamente` cuando se analiza el extremo izquierdo de la tabla de valores
        + Formula
            $$\displaystyle f_{s}' = \frac{1}{h}[f_{s+1}-f_{s}]$$
        + Orden de error `1`

    - ### Hacia atras
        >Se usa `unicamente` cuando se analiza el extremo derecho de la tabla de valores

        + Formula
            $$\displaystyle f_{s}' = \frac{1}{h}[f_{s}-f_{s-1}]$$
        + Orden de error `1`

    - ### Central
        >Se usa `unicamente` cuando se analizan los valores internos de la tabla de valores
        
        + Formula
            $$\displaystyle f_{s}' = \frac{1}{2h}[f_{s+1}-f_{s-1}]$$
        + Orden de error `2`

    - ### Asimetrica hacia adelante
        >Es una formula mas exacta que la [derivada hacia adelante](#hacia-adelante)
        
        >Se usa `unicamente` cuando se analiza el extremo izquierdo de la tabla de valores

        + Formula
            $$\displaystyle f_{s}' = -\frac{3}{2h}f_{s}+\frac{2}{h}f_{s+1}-\frac{1}{2h}f_{s+2}$$
        + Orden de error `2`
    - ### Asimetrica hacia atras
        >Es una formula mas exacta que la [derivada hacia atras](#hacia-atras)

        >Se usa `unicamente` cuando se analiza el extremo izquierdo de la tabla de valores
        
        >$f_{s}$ es el valor de la funcion en el valor de `x` seleccionado

        + Formula
            $$\displaystyle f_{s}' = \frac{3}{2h}f_{s}-\frac{2}{h}f_{s-1}+\frac{1}{2h}f_{s-2}$$
        + Orden de error `2`

------------------------------------------

### Derivada segunda:

* Datos                      
    - Una funcion `f`
    - Una serie de valores de `x` y sus respectivos valores de `y`
    - El paso llamado `h`
    > El valor de `h` puede ser calculado como la distancia entre dos puntos consecutivos de la serie de valores de `x`(siempre debe ser el mismo paso para todos los puntos)

* Casos

    Referencia: $f_{s}$ es el valor de la funcion en el valor de `x` seleccionado
    - ### Central
        >Se usa `unicamente` cuando se analizan los valores internos de la tabla de valores
        
        + Formula
            $$\displaystyle f_{s}'' = \frac{1}{h^{2}}[f_{s+1}-2f_{s}+f_{s-1}]$$
        + Orden de error `2`

------------------------------------------

### Derivada tercera:

* Datos                      
    - Una funcion `f`
    - Una serie de valores de `x` y sus respectivos valores de `y`
    - El paso llamado `h`
    > El valor de `h` puede ser calculado como la distancia entre dos puntos consecutivos de la serie de valores de `x`(siempre debe ser el mismo paso para todos los puntos)

* Casos

    Referencia: $f_{s}$ es el valor de la funcion en el valor de `x` seleccionado
    - ### Central
        >Se usa `unicamente` cuando se analizan los valores internos de la tabla de valores
        
        + Formula
            $$\displaystyle f_{s}''' = \frac{1}{2h^{3}}[-f_{s-2}+2f_{s-1}-2f_{s+1}+f_{s+2}]$$
        + Orden de error `2`

---------------------------------------------------------


### Derivada cuarta:

* Datos                      
    - Una funcion `f`
    - Una serie de valores de `x` y sus respectivos valores de `y`
    - El paso llamado `h`
    > El valor de `h` puede ser calculado como la distancia entre dos puntos consecutivos de la serie de valores de `x`(siempre debe ser el mismo paso para todos los puntos)

* Casos

    Referencia: $f_{s}$ es el valor de la funcion en el valor de `x` seleccionado
    - ### Central
        >Se usa `unicamente` cuando se analizan los valores internos de la tabla de valores
        
        + Formula
            $$\displaystyle {f_{s}}^{iv} = \frac{1}{h^{4}}[f_{s-2}-4f_{s-1}+6f_{s}-4f_{s+1}+f_{s+2}]$$
        + Orden de error `2`

------------------------------------------




