--OPERAÇOES MATEMATICAS
select 1 + 2 as Resultado;
select 458.99 + 899 + 7.77 Resultado;

--SUBTRAÇÃO
select 233 - (78.99 + 333) Resultado;

--DIVISÃO 
select 50/2 as Resultado;
select 49/2 as Resultado;
select 49.0/2 as Resultado;
select 49.99/2 as Resultado;

--MULTIPLICAÇÃO
select 50*2 as Resultado;
select 50.88 *3 as Resultado;

--POTENCIAÇÃO = 2 AO QUADRADO
select square(7) as Resultado;-- quadrado de um numero (numero x ele mesmo)
select power (3,3) as Resultado; --3x3x3 
select power (2,8) as Resultado;

--PORCENTAGEM
select 100 * 1.1 as Resultado;
select 100 + (100 * 0.1) as Resultado;

select 100 * 0.9 as Resultado; --1 /10 * 9
select 100 * 0.1 as Resultado; --1 /10
select 100 * 0.01 as resultado; --1/100

--ABS
select abs(100-999) as Resultado; -- essa funçao sempre retorna positivo
select abs(-100) as Resultado;

--RAIZ QUADRADA
select sqrt(49) as Resultado;
select sqrt(7) as Resultado;

--PI
select pi() as resultado;

--DATA ATUAL
select getdate() as resultado;

--SIGNAL
select sign(10) as Resultado;
select sign(-10) as Resultado;
select sign (null) as Resultado;
select sign (0) as Resultado;

--SOMA
select (1.500 + 7777) as Resultado; --sum função de agregação