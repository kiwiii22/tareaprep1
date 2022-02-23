num1 = input('ingrese numero inicial: ');
num2 = input('Ingrese numero final: ');
total = 0;

for i = num1:2:num2
  disp(i)
end

total = ('Calculado')

fid = fopen('P8.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P8.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 8',total});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla