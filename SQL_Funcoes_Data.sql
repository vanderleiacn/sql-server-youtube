select getdate();

select convert(char,getdate(),103); --formato dd/mm/yyyy ( pq, converter para o tipo char se nao é apenas um caracter?
select convert(char,getdate(),102); --formato aaaa.mm.dd
select convert(char,getdate(),3); --tabela ANSI SQL

select day(getdate()) as dia;
select month(getdate()) as mês;
select year(getdate()) as ano;
select year('11/11/1972') as ano;

--DATEPART (parte de uma data)
select datepart(year,getdate());
select datepart(month,getdate());
select datepart(day,getdate());

select datepart(year,'11/11/1972');

select datepart(year, data_nascimento) as ano from dbo.Alunos
select distinct datepart(year, data_nascimento) as ano from dbo.Alunos -- distinct as datas nao se repetem
select distinct datepart(year, data_nascimento) as ano from dbo.Alunos order by 1

--DATEADD (adiciona ou tira algo a minha data)
select dateadd(year,-2, getdate()); -- subtrai 2 anos da data atual
select convert(date, dateadd(year,-2,getdate()));-- converte para o padrao data o resultado do select anterior/ somente a data
select dateadd(month,3, getdate()); --soma 3 meses da data atual
select convert(date,dateadd(month,3, getdate()));-- 3 meses a frente da data atual no formato an,mes e dia

select dateadd(day,28, getdate()); --soma 28 dias a data atual 
select convert(date,dateadd(day,28, getdate()));

select dateadd(hour,3,getdate());--acrescenta 3 horas na data e hora atual
select convert(datetime,dateadd(hour,3,getdate())); --acrescenta 3 horas na data e hora atual
select convert(smalldatetime,dateadd(hour,3,getdate()));--acrescenta 3 horas na data e hora atual com padrao até os segundos

--DATEDIFF
select datediff(year,getdate(),dateadd(year,4,getdate())) as ano;--a diferença de anos da data atual para 4 anos na frente
select datediff(month,getdate(),dateadd(year,2,getdate()))as meses;-- a diferença de meses desde a data atual até 2 anos pra frente , sao 24 meses
select datediff(day,getdate(),dateadd(year,2,getdate()))as dias;-- existe 731 dias de diferença da data atual até 2 anos pra frente

select datediff(hour,'02/05/1988',getdate()) as horas_vida; -- horas de vida da data de nascimento ate a data atual
select datediff(minute,'02/05/1988',getdate()) as minutos_vida;
select datediff(second,'02/05/1988', getdate()) as segundos_de_vida;
