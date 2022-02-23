num = 100;
var = 2;
total = 0;

for i=1:num
  
  if mod(i,var)!=0
  disp(i)
  cantidad = num/2;
end
end

total = ('Completado')

fid = fopen('P6.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P1.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 5',total});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla