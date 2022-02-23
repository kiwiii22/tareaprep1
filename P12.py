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

print('\n Notas')
print('Iniciar programa(1)')
opcion=int(input('ingrese una opcion: '))
cursor = conexion.cursor()

if opcion==1:
    nota1=int(input('Ingrese la primera nota: '))
    nota2=int(input('Ingrese la segunda nota: '))
    nota3=int(input('Ingrese la tercera nota: ')) 

    if(0<=nota1<101) and (0<=nota2<=101) and (0<=nota2<=101):
        promedio=((nota1+nota2+nota3)/3)
        cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 12', promedio))
        conexion.commit()

        if promedio>60:
            print('promedio:'+str(promedio))
            print('Aprobado')
           
        else: 
            print('promedio'+str(promedio))
            print('Reprobado')
           
    else:
     print('ingrese notas validas')
    cursor.close()
    conexion.close()

encode