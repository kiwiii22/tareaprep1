n = input('Ingrese a�o de nacimiento');
x = mod(n,4)==0;
y = mod(n,100)==0;
z = mod(n,400)==0;
tot = 0;
if (x && y && z) || (x && ~y && ~z)
   disp('A�o bisiesto')
   tot = ('A�o bisiesto');
 else
   disp('A�o no bisiesto')
   tot = ('A�o no bisiesto');
end

fid = fopen('P13.txt', 'a');
fprintf(fid, 'Resultado %d\n', tot)
fclose(fid);
save('P13.txt','tot','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 13',tot});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla