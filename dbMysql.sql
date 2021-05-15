show databases;
use cdtColab;
show tables;
describe food;
describe colab;
select * from colab;
select * from food;
insert into colab (name, cpf) values ("Santana", "12345678900");
insert into food (name, id_colab) values ("Pão", 1);

SELECT C.name, C.cpf, F.name FROM food AS F INNER JOIN colab as C ON F.id_colab = C.idcolab order by C.name;