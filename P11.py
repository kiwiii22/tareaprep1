import psycopg2
from base64 import encode

try: 
    conexion = psycopg2.connect(
        host = "localhost",
        port = "5432",
        user = "postgres",
        password = "2807289050109",
        dbname = "postgres"
    )
    print("Conexión exitosa")
except psycopg2.Error as e:
    print("Ocurrió un error en la conexión")
    print("Verifique los parámetros")

print('\n Area de figuras geometricas')
print('Iniciar programa(1)')
print('Salir(2)')
opcion=int(input('ingrese una opcion: '))
cursor = conexion.cursor()

if opcion==1:
    print('1 = circulo')
    print('2 = triangulo')
    print('3 = cuadrado')
    print('4 = rectangulo')
    figura=int(input('Seleccione una opcion: '))

    if figura==1: 
        print('Circulo')
        radio=float(input('Ingrese el radio: '))
        if radio>0:
            acirculo=3.12159*(radio*radio)
            cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 11', acirculo))
            conexion.commit()
            print('El area del circulo es: ', acirculo)
            
        else:
            print("Ingrese un radio mayor a 0") 

    if figura==2:
        print('Triangulo')
        base=float(input('Ingrese la base: '))
        altura=float(input('Ingrese la altura: '))
        if base>0 and altura>0:
            atriangulo=0.5*(base*altura)
            cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 11', atriangulo))
            conexion.commit()
            print('El area del triangulo es: ', atriangulo)
            
        else: 
            print("ingrese valores mayores a 0")

    if figura==3:
        print('Cuadrado')
        lado=float(input('Ingrese el lado: '))
        if lado>0:
            acuadrado=(lado*lado)
            cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 11', acuadrado))
            conexion.commit()
            print('El area del cuadrado es: ', acuadrado)
           
        else :
            print("Ingrese un lado mayor a 0")
    
    if figura==4:
        print('Rectangulo')
        base=float(input('Ingrese la base: '))
        altura=float(input('Ingrese la altura: '))
        if base>0 and altura>0:
            arectangulo=(base*altura)
            cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 11', arectangulo))
            conexion.commit()
            print('El area del rectangulo es: ', arectangulo)
            
        else:
            print("ingrese valores mayores a 0 ")
    print("Terminado")
    cursor.close()
    conexion.close()
encode