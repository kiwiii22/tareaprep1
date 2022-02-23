cadena = input('Ingresa una palabra ', 's');

vocales = ['a','e','i','o','u'];
num = [];

for i = 1:5
  num = [num strfind(cadena,vocales(i))];
end
  tot = length(num)
  
fid = fopen('P3.txt', 'a');
fprintf(fid, 'Resultado %d\n', tot)
fclose(fid);
save('P3.txt','tot','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 3',tot});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla