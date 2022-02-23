num1 = input('ingrese numero 1: ');
num2 = input('Ingrese numero 2: ');
total = 0;

if (num1>num2)
  
  for i=num1:-1:num2
    disp(i)
  endfor

  else 
    for i=num2:-1:num1
    disp(i)
  endfor
  total = ('Cuenta regresiva')
end

fid = fopen('P9.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P9.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 9',total});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla