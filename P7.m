num = input('ingrese numero: ');
divisor = 7;
total = 0;

if mod(num,divisor)==0
  
  var = 1;
  
  for i = 1:num
    calc = i*var;
    var = calc;
  end
  
  calc;
  total = calc
  else 
    disp('no es divisible entre 7')
    total = ('no divisible')
  end
  
 fid = fopen('P7.txt', 'a');
fprintf(fid, 'Resultado %d\n', total)
fclose(fid);
save('P7.txt','total','-append','-ascii') 

pkg load database
conn = pq_connect (setdbopts ("dbname", "postgres", "host", "localhost", "port", "5432", "user", "postgres", "password", "2807289050109"))
N=pq_exec_params(conn, "insert into tareapreparatoria1 values ($1,$2);",{'Ejercicio 7',total});
#N=pq_exec_params(conn, 'select * from tareapreparatoria1;') %ver datos en la tabla
