[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/ta8k1mFh)
# TP 0

## Condiciones de aprobación

- Fecha límite: 08/04/2024
- Pruebas: Se deben pasar todas las pruebas automatizadas.
- Git: Se evaluará el uso correcto de la herramienta Git.

> [!IMPORTANT]
> El TP es de carácter totalmente individual. **Los casos de copia implican la desaprobación directa de la materia para ambas partes**.

## Enunciado

> [!NOTE]
> Por convención, cuando un parámetro aparece entre `<>` significa que el mismo es obligatorio. En cambio, cuando aparece entre `[]`, indica que es opcional.

1. Crear un _script_ de bash llamado `unir.sh` que tenga el siguiente uso:
    ```
    unir.sh [-o salida] <archivo> [archivo [archivo [...]]]
    ```
    El _script_ deberá recibir una cantidad indeterminada de archivos y deberá unirlos, uno debajo del otro. Si el primer parámetro recibido es el _flag_ `-o`, el resultado deberá guardarse en el archivo recibido como segundo parámetro (`salida`), sobreescribiéndolo en caso de ya existir. En caso contrario, el resultado debe imprimirse por pantalla (`stdout`). Por ejemplo, si se ejecuta `bash unir.sh archivo1 archivo2`, se debería imprimir por pantalla:
    ```
    contenido del archivo1...
    contenido del archivo2...
    ```
    En cambio, si se ejecuta `bash unir.sh -o output.txt archivo1 archivo2 archivo3`, se debería guardar en el archivo `output.txt`:
    ```
    contenido del archivo1...
    contenido del archivo2...
    contenido del archivo3...
    ```
2. Crear un _script_ de bash llamado `parser.sh` que tenga el siguiente uso:
    ```
    parser.sh <archivo> <delimitador> [columna=1]
    ```
    El _script_ recibe un archivo de datos en forma de tabla, el delimitador usado para serparar sus columnas y un tercer parámetro opcional que indica la columna que se quiere mostrar, por defecto este parámetro es 1. El _script_ deberá mostrar la columna indicada del archivo, eliminando sus vocales. Por ejemplo, si se tiene un archivo `muestra.csv` como el siguiente:
    ```csv
    juan,18,informatica
    jose,20,electronica
    maria,18,mecanica
    ```
    y se ejecuta el _script_ con `bash parser.sh muestra.csv , 3`, el resultado debería ser:
    ```
    nfrmtc
    lctrnc
    mcnc
    ```
> [!TIP]
> Investigar los comandos `cut` y `tr`
