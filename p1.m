nu1 = input('Primer número ');
nu2 = input('Segundo número ');
nu3 = input('Tercer número ');
if((nu1>nu2)&&(nu1>nu3)&&(nu2!=nu3))
  tot = nu1 + nu2 + nu3
elseif ((nu2>nu1)&&(nu2>nu3)&&(nu1!=nu3))
  tot = nu1 * nu2 * nu3
elseif ((nu3>nu1)&&(nu3>nu2)&&(nu1!=nu2))
  tot = cat(2,nu1,nu2,nu3)
elseif ((nu1==nu2)&&(nu1!=nu3))
  tot = nu3;
  printf('Número distante: %d\n', tot)
elseif ((nu1==nu3)&&(nu1!=nu2))
  tot = nu2;
  printf('Número distante; %d\n', tot)
elseif ((nu3==nu2)&&(nu1!=nu3))
  tot = nu1;
  printf('Número distante: %d\n', tot)
elseif ((nu1==nu2)&&(nu1=nu3)&&(nu2==nu3))
  tot = ('Iguales');
end 

fid = fopen('P1.txt', 'a');
fprintf(fid, 'Resultado %d\n', tot)
fclose(fid);
save('P1.txt','tot','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 1',tot});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla