# Raices de ecuaciones no lineales:
> Metodos usados para encontrar raices de ecuaciones no lineales

> Este directorio contiene un archivo para cada metodo correspondiente con su respectivo codigo y ademas hay un archivo llamado `example_function` donde se declara la funcion para la cual se estan buscando raices, si se desea cambiar la funcion que se evalua, este archivo debe ser modificado
### Controles de detencion validos para cualquier metodo                                                        
 + $\displaystyle \vert f(r_{k+1}) \vert ≤ \varepsilon_{f}$                      

 + $\displaystyle \vert r_{k+1} - r_{k}\vert ≤ \varepsilon_{r_{o}}$          

 + $\displaystyle \vert \frac{r_{k+1} - r_{k}}{r_{k+1}}\vert ≤ \varepsilon_{r} $

------------------------------------------------------------

### Bisección:
* Datos                      
    - `Intervalo [a,b] y funcion`
* Inicializacion             
    - $f(a_{k}) * f(b_{k}) < 0$
* Recurrencia                
    - $\displaystyle r_{k+1} = \frac{a_{k} - b_{k}}{2}$
* Actualizacion de variables:
    - `Si` &emsp;$f(a_{k}) * f(r_{k}) < 0$, &emsp;`entonces` &emsp;$b_{k} = r_{k}$
    - `Si` &emsp;$f(r_{k}) * f(b_{k}) < 0$, &emsp;`entonces` &emsp;$a_{k} = r_{k}$

------------------------------------------

### Regula - falsi:
* Datos:          
    - `Intervalo [a,b] y funcion`

* Inicializacion:
    - $f(a_{k}) * f(b_{k}) < 0$

* Recurrencia
    - $\displaystyle m = \frac{f(a_{k}) - f(b_{k})}{a_{k} - b_{k}}$ 

    - $\displaystyle r_{k+1} = a_{k} -\frac{f(a_{k})}{m}$ &emsp;`Or` &emsp;     $\displaystyle r_{k+1} = b_{k} -\frac{f(b_{k})}{m}$
* Actualizacion de variables:
    - `Si` &emsp;$f(a_{k}) * f(r_{k}) < 0$, &emsp;`entonces` &emsp;$b_{k} = r_{k}$
    - `Si` &emsp;$f(r_{k}) * f(b_{k}) < 0$, &emsp;`entonces` &emsp;$a_{k} = r_{k}$

---------------------------------------------------------

### Secante:
* Datos                      
    - $r_{k-1}$ &emsp;y &emsp;$r_{k}$

* Recurrencia
    - $\displaystyle m = \frac{f(r_{k}) - f(r_{k-1})}{r_{k} - r_{k-1}}$ 

    - $\displaystyle r_{k+1} = r_{k} -\frac{f(r_{k})}{m}$

* Actualizacion de variables:
    - $r_{k-1} = r_{k}$
    - $r_{k} = r_{k+1}$

--------------------------------------------------

### Newton - raphson:
* Datos                      
    - Funcion &emsp;y &emsp;$r_{k}$ 

* Recurrencia
    - $\displaystyle m = \frac{\partial{f(x)}}{\partial{x}}$ &emsp;`con` &emsp;$x = r_{k}$

    - $\displaystyle r_{k+1} = r_{k} -\frac{f(r_{k})}{m}$

* Actualizacion de variables:
    - $r_{k} = r_{k+1}$
------------------------------------------------------------




- regula - falsi
- secante
- newton - raphson
- punto fijo