--TRANSACTION - Protegendo seus dados com o uso de transações

--BEGIN TRANSACTION (QUANDO COMEÇAMOS UMA TRANSAÇÃO
--ROLLBACK TRANSACTION (QUANDO DESFAZER UMA TRANSAÇÃO QUE ESTA EM ANDAMENTO
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


--tr1 transação 1
--apagando todos os nomes q começam com a letra g
declare @tr1  varchar(20);
	select @tr1 = 'Transação Delete';

begin transaction  @tr1;

delete from tTemp	
	where nome like 'G%';

commit transaction @tr1;

select *from tTemp;




