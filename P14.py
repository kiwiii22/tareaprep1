import psycopg2
from base64 import encode
from numpy import disp

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

cursor = conexion.cursor()
numero1 = int(input('modelo: '))
numero2 = int(input('Kilometraje: '))

if ((numero1<2007)and(numero2>20)):

    disp('Renovar')
    total = ('Renovar');
    cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 14', total))
    conexion.commit()

elif ((numero1>=2007)and(numero2<=2013)and (numero2>=20000)):
    disp ('Mantenimiento')
    total = ('Mantenimiento');
    cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 14', total))
    conexion.commit()

elif((numero1>2013)and(numero2<10000)):
    disp('Optimas condiciones')
    total = ('Optimas condiciones');
    cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 14', total))
    conexion.commit()
else: 
    disp('Mecanico')
    total = ('Mecanico');
    cursor.execute("insert into tareapreparatoria1(ejercicio, total) values(%s, %s);",('Ejercicio 14', total))
    conexion.commit()    
    cursor.close()
    conexion.close()
encode