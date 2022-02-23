nu1 = input('Lado A ');
nu2 = input('Lado B ');
nu3 = input('Lado C ');
tot = 0;

if((nu1!=nu2)&&(nu2!=nu3)&&(nu1!=nu3))
  disp('Triangulo Escaleno')
  tot = ('Triangulo Escaleno');
elseif(((nu1==nu3)&&(nu1!=nu2))||((nu3==nu2)&&(nu1!=nu3))||((nu1==nu2)(nu1!=nu3)))
  disp('Triangulo Isoseles')
  tot = ('Triangulo Isoseles');
elseif((nu1==nu2)&&(nu2==nu3)&&(nu1==nu3))
  disp('Triangulo Equilatero')
  tot = ('Triangulo Equilatero');
end

fid = fopen('P5.txt', 'a');
fprintf(fid, 'Resultado %d\n', tot)
fclose(fid);
save('P5.txt','tot','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 5',tot});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla