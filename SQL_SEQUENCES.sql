

create sequence seq_Teste01;

select next value for seq_Teste01;


-----------------------------------
create sequence seq_Teste02
	as numeric
	start with 1
	increment by 1;

select next value for seq_Teste02;

select * from sys.sequences

--nao entendi muito pra que usar sequence 
--seria algo parecido com o identity
