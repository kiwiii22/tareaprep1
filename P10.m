pal = input('ingrese palabra: ', 's')

vocal = ['a','e','i','o','u'];
num = [];
num1 = [];
num2 = [];
num3 = [];
num4 = [];

total = 0;

for i=1:5
  
  switch i
    case i=1
      num = [num strfind(pal,vocal(i))];
     
    case i=2
        num1 = [num1 strfind(pal,vocal(i))];
        
     case i=3
        num2 = [num2 strfind(pal,vocal(i))];
        
     case i=4
        num3 = [num3 strfind(pal,vocal(i))];
        
      case i=5
        num4 = [num4 strfind(pal,vocal(i))];
  end
end

  A = length(num)
  E = length(num1)
  I = length(num2)
  O = length(num3)
  U = length(num4)
  
 total = ('calculado')
 
 fid = fopen('P10.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P1.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 10',total});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla