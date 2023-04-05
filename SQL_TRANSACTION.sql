--TRANSACTION - Protegendo seus dados com o uso de transa��es

--BEGIN TRANSACTION (QUANDO COME�AMOS UMA TRANSA��O
--ROLLBACK TRANSACTION (QUANDO DESFAZER UMA TRANSA��O QUE ESTA EM ANDAMENTO
--COMMIT (GRAVAR OS DADOS EFETIVAMENTE NO BANCO)


-- tabela temporaria
select *
	into tTemp
	from alunos;

select * from tTemp;

begin transaction ;
	update tTemp 
	set sexo = lower(sexo);
commit;

begin transaction;
	update tTemp set sexo = upper(sexo);
	rollback;

begin transaction;
	drop table tTemp;
rollback;


--tr1 transa��o 1
--apagando todos os nomes q come�am com a letra g
declare @tr1  varchar(20);
	select @tr1 = 'Transa��o Delete';

begin transaction  @tr1;

delete from tTemp	
	where nome like 'G%';

commit transaction @tr1;

select *from tTemp;




