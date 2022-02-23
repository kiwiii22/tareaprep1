nu = input('Ingresa el número ');
for i=0:nu
  if(mod(nu,i)==0)
  disp(i)
  tot = i;
end
end

fid = fopen('P2.txt', 'a');
fprintf(fid, 'Resultado %d\n', tot)
fclose(fid);
save('P2.txt','tot','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 2',tot});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla