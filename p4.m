nu = input('Ingrese número ');
val = 0;

for i=1:nu
  resultado = i + val;
  val = resultado;
end

printf('Resultado: %d\n', resultado)

fid = fopen('P4.txt', 'a');
fprintf(fid, 'Resultado %d\n', val)
fclose(fid);
save('P4.txt','val','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 4',val});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla