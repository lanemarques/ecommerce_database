use ecommerce_v1;

-- Alter table clients
-- drop column CPF;

-- alter table clients
-- add typeClient enum('PF', 'PJ');

-- alter table clients
-- modify typeClient enum('PF', 'PJ') not null;

-- alter table Clients
-- modify Address varchar(255);

-- =====================================================
-- TABELA CLIENTS
-- =====================================================

insert into clients (Fname, Minit, Lname, Address, typeClient)
	values  ('Ana', 'M', 'Silva', 'Rua Magnolia, 35, Jardim Oliveira, São Paulo - SP', 'PF'),
			('Maria', 'C', 'dos Santos', 'Avenida Clementina, 14, Cidade dos Anjos - Curitiba- PR', 'PJ'),
			('Valeria', 'A', 'Dourado', 'Rua Benjamim Franklin, 80, Dourados- Belford Roxo - RJ', 'PJ'),
			('Juliana', 'C', 'Medeiros', 'Praça das Dracenas, 75, Alphaville - Petropolis - RJ', 'PF'),
			('Alexsandra', 'A', 'Venturino', 'Rua Pelotas, 236, Americanas - Caxias do Sul - RS', 'PF'),
			('Marcelo', 'P', 'Araujo', 'Avenida Ricardo Djalma Melo, 879 - Labirinto - Tres Lagoas - MS', 'PJ'),
			('Fernando', 'O', 'Pessoa', 'Viela 5, 456, Socorro - Santo Amaro - SP', 'PF'),
			('Joao', 'C', 'Nogueira', 'Avenida Matheus Peninatte, 258 - Jardim Felisteu - Cajueiro - AL', 'PF'),
			('Mirimah', 'A', 'Telles', 'Rua Maravilha, 58, Jardim Santo Antonio - Caxias do Sul - RS', 'PJ'),
			('Fabricio', 'P', 'Oliveira', 'Rua Meredith, 74, Heliopolis - Olimpia - SP', 'PF');

select * from clients;

-- =====================================================
-- CLIENTES PF
-- ===================================================== 

insert into clientsPF (idClient, CPF)
	values  (1, '12345678901'),
			(4, '45365810855'),
			(5, '32645812858'),
			(7, '45687923514'),
			(8, '36985274123'),
			(10, '85278915925');

 select * from clientsPF;   
   
-- =====================================================
-- CLIENTES PJ
-- ===================================================== 
 insert into clientsPJ (idClient, CNPJ)
	values  (2, '12345678000199'),
			(3, '35865432000172'),
			(6, '98765432000188'),
			(9, '32165498000155');

  select * from clientsPJ;      

-- =====================================================
-- PRODUCT
-- ===================================================== 
 insert into product (Pname, classification_kids, category, avaliacao, size)
	values ('TV', false, 'Eletronico', 4.5, '60'),
			('Celular', false, 'Eletronico', 4.7, 'Pequeno'),
			('Camiseta', false, 'Vestuario', 4.2, 'M'),
			('Boneca', true, 'Brinquedos', 4.8, 'Pequeno'),
			('Carrinho', true, 'Brinquedos', 4.6, 'Pequeno'),
			('Sofa', false, 'Moveis', 4.3, 'Grande'),
			('Mesa', false, 'Moveis', 4.1, 'Grande'),
			('Arroz', false, 'Alimentos', 4.9, '5kg'),
			('Chocolate', true, 'Alimentos', 4.7, 'Pequeno'),
			('Tenis', false, 'Vestuario', 4.4, '42');
  select * from product;

-- =====================================================
-- ORDERS
-- ===================================================== 
insert into orders (idOrderClient, OrderStatus, OrderDescription, SendValue, paymentCash)
	values (1, 'Confirmado', 'Compra de eletronicos', 15.0, false),
			(2, 'Em processamento', 'Pedido de vestuario', 20.0, true),
			(3, 'Confirmado', 'Compra de brinquedos', 12.5, false),
			(4, 'Cancelado', 'Pedido cancelado pelo cliente', 10.0, false),
			(5, 'Confirmado', 'Compra de moveis', 25.0, true),
			(6, 'Em processamento', 'Pedido alimentos', 8.0, false),
			(7, 'Confirmado', 'Compra variada', 18.0, true),
			(8, 'Confirmado', 'Pedido simples', 10.0, false),
			(9, 'Em processamento', 'Compra grande', 30.0, true),
			(10, 'Confirmado', 'Pedido finalizado', 14.0, false);
            
select * from orders;      

-- =====================================================
-- PRODUCT STORAGE
-- ===================================================== 
insert into productStorage (storageLocation, quantity)
	values ('São Paulo - Centro', 100),
			('Rio de Janeiro - Zona Sul', 50),
			('Belo Horizonte - Savassi', 75),
			('Curitiba - Industrial', 120),
			('Porto Alegre - Norte', 60),
			('Salvador - Centro', 80),
			('Recife - Zona Norte', 40),
			('Brasilia - Asa Sul', 90),
			('Fortaleza - Leste', 110),
			('Campinas - Interior', 70);
   select * from productStorage;  
   
-- =====================================================
-- SUPPLIER
-- ===================================================== 
   insert into Supplier (SocialName, CNPJ, contact)
	values ('Fornecedor Tech Ltda', '11111111000101', '11999990001'),
			('Moda Brasil SA', '22222222000102', '21988880002'),
			('Brinquedos Feliz Ltda', '33333333000103', '31977770003'),
			('Alimentos Bom Sabor', '44444444000104', '41966660004'),
			('Moveis Conforto', '55555555000105', '51955550005'),
			('Distribuidora Geral', '66666666000106', '61944440006'),
			('Importadora Global', '77777777000107', '71933330007'),
			('Fornecedor Premium', '88888888000108', '81922220008'),
			('Logistica Brasil', '99999999000109', '11911110009'),
			('Atacado Central', '10101010000110', '21900000010');
select * from Supplier;

-- =====================================================
-- SELLER
-- ===================================================== 
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact)
	values ('Tech Vendas Ltda', 'TechV', '12345678000111', NULL, 'São Paulo - SP', '11999990011'),
			('Moda Express', 'ModaEx', '22345678000122', NULL, 'Rio de Janeiro - RJ', '21988880022'),
			('Brinquedos Alegria', 'BrinqA', '32345678000133', NULL, 'Belo Horizonte - MG', '31977770033'),
			('Moveis Lar', 'MoveLar', '42345678000144', NULL, 'Curitiba - PR', '41966660044'),
			('Carlos Vendedor', NULL, NULL, '12345678910', 'Salvador - BA', '71955550055'),
			('Ana Comercio', NULL, NULL, '10987654321', 'Recife - PE', '81944440066');
 
 select * from seller;
 
 -- =====================================================
-- PRODUCT SELLER
-- ===================================================== 
 insert into productSeller (idPSeller, idPproduct, produQuantity)
	values (1, 1, 10),
			(1, 2, 5),
			(2, 3, 20),
			(2, 10, 15),
			(3, 4, 12),
			(3, 5, 8),
			(4, 6, 6),
			(4, 7, 9),
			(5, 8, 25),
			(6, 9, 30);
select * from productSeller;

-- =====================================================
-- PRODUCT ORDER
-- ===================================================== 
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
	values (1, 1, 2, 'Disponível'),
			(2, 1, 1, 'Disponível'),
			(3, 2, 3, 'Disponível'),
			(4, 3, 1, 'Disponível'),
			(5, 3, 2, 'Sem Estoque'),
			(6, 4, 1, 'Disponível'),
			(7, 5, 2, 'Disponível'),
			(8, 6, 5, 'Disponível'),
			(9, 7, 3, 'Sem Estoque'),
			(10, 8, 1, 'Disponível');
select * from productOrder;

-- =====================================================
-- STORAGE LOCATION
-- ===================================================== 
insert into storageLocation (idproduct, idstorage, location)
	values (1, 1, 'Corredor A'),
			(2, 1, 'Corredor B'),
			(3, 2, 'Prateleira 1'),
			(4, 2, 'Prateleira 2'),
			(5, 3, 'Setor Infantil'),
			(6, 4, 'Area Moveis'),
			(7, 4, 'Area Moveis'),
			(8, 5, 'Alimentos Secos'),
			(9, 6, 'Doces'),
			(10, 7, 'Vestuario');
select * from storageLocation;

-- =====================================================
-- PRODUCT SUPPLIER
-- ===================================================== 
insert into productSupplier (idPsSupplier, idPsProduct, quantity)
	values (1, 1, 50),
			(1, 2, 30),
			(2, 3, 100),
			(2, 10, 80),
			(3, 4, 60),
			(3, 5, 40),
			(4, 8, 200),
			(5, 6, 20),
			(5, 7, 25),
			(6, 9, 150);
	select * from productSupplier;
    
-- =====================================================
-- PAYMENTS
-- ===================================================== 
insert into payments (idOrder, typePayment, value, status)
	values (1, 'Pix', 150.00, 'Aprovado'),
	(2, 'Cartao', 5.000, 'Pendente'),
	(3, 'Boleto', 300.00, 'Aprovado'),
	(4, 'Cartao', 120.00, 'Recusado'),
	(5, 'Pix', 250.00, 'Aprovado'),
	(6, 'Boleto', 80.00, 'Pendente'),
	(7, 'Cartao', 1.500, 'Aprovado'),
	(8, 'Dinheiro', 90.00, 'Aprovado'),
	(9, 'Boleto', 310.00, 'Pendente'),
	(10, 'Dinheiro', 140.00, 'Aprovado');
    
select * from payments;
  
-- =====================================================
-- DELIVERY
-- ===================================================== 
    insert into delivery (idOrder, status, trackingCode)
	values (1, 'Enviado', 'BR123456'),
			(2, 'Pendente', NULL),
			(3, 'Entregue', 'BR345678'),
			(4, 'Pendente', NULL),
			(5, 'Enviado', 'BR567890'),
			(6, 'Pendente', NULL),
			(7, 'Entregue', 'BR789012'),
			(8, 'Enviado', 'BR890123'),
			(9, 'Pendente', NULL),
			(10, 'Entregue', 'BR012345');
 select * from delivery;
 
-- quem sao os clientes PF
 select c.idClient, c.Fname, c.Minit, c.Lname, c.Address, c.typeClient, pf.CPF
 from clients c
 join clientsPF pf on pf.idClient = c.idClient;
 
 -- quem sao os clientes PJ
select c.idClient, c.Fname, c.Minit, c.Lname, c.Address, c.typeClient, pj.CNPJ
 from clients c
 join clientsPJ pj on pj.idClient = c.idClient;
 
 -- Produtos por vendedores
select s.idSeller, s.SocialName, ps.produQuantity
	from productSeller ps
	join seller s on s.idSeller = ps.idPSeller
	join product p on ps.idPproduct = p.idProduct;

 -- disponibilidade dos produtos
select p.Pname, po.poQuantity, po.poStatus as Product
	from productOrder po
	join product p on po.idPOproduct = p.idProduct;
 
-- andamento das entregas dos clientes
select c.idClient, c.Fname, c.Lname, c.Address, c.typeClient, d.status, d.trackingCode
	from clients c 
	join orders o on c.idClient = o.idOrderClient
	join delivery d on d.idOrder = o.idOrder;

-- pedidos por cliente
select c.Fname, o.idOrder, o.OrderStatus, p.typePayment, d.status as delivery_Status
from clients c
	join orders o on c.idClient = o.idOrderClient
	join payments p on o.idOrder = p.idOrder
	join delivery d on o.idOrder = d.idOrder;
	
--  pedidos por produto
select p.Pname, po.idPOorder, po.poQuantity
	from product p
	join productOrder po on p.idProduct = po.idPOproduct;  

-- pedidos confirmados
select * from orders
	where OrderStatus = 'Confirmado';

-- pedidos cancelados
select * from orders
	where OrderStatus = 'Cancelado';

-- quais pedidos ainda estão em aberto ou em processamento
select concat(Fname, ' ', Lname) as Complete_Name, o.idOrder, o.OrderStatus
	from clients c
	join orders o on c.idClient = o.idOrderClient
	where o.OrderStatus = 'Em processamento';

-- qual valor total de pagamentos
select SUM(value) as total_pagamentos
	from payments;

-- clientes que fizeram 1 ou mais pedidos
select idOrderClient, COUNT(*) as total_pedidos
	from orders
	group by idOrderClient
	having COUNT(*) >= 1;

-- quais produtos foram mais vendidos
select p.Pname, SUM(po.poQuantity) as total_vendido
	from product p
	join productOrder po on p.idProduct = po.idPOproduct
	group by p.idProduct, p.Pname
	order by total_vendido desc;

-- produtos com mais saidas por regiao 
select c.Address, p.Pname, SUM(po.poQuantity) as total_vendido
	from clients c
	join orders o on c.idClient = o.idOrderClient
	join productOrder po on o.idOrder = po.idPOorder
	join product p on p.idProduct = po.idPOproduct
	group by c.Address, p.Pname
	order by total_vendido desc;

-- quais produtos estao associados aos fornecedores
select f.idSupplier, f.SocialName, f.CNPJ, psup.idPsProduct, psup.quantity, p.Pname, p.category
	from Supplier f
	join productSupplier psup on f.idSupplier = psup.idPsProduct
	join product p on p.idProduct = psup.idPSproduct;

-- qual fornecedor fornece mais cada produto
select f.idSupplier, f.SocialName, p.PName, ps.quantity
	from Supplier f
	join productSupplier ps on f.idSupplier = ps.idPsSupplier
	join product p on p.idProduct = ps.idPsProduct;

-- qual vendedor vendeu mais
select s.SocialName, sum(ps.produQuantity) as total_vendido
	from seller s
	join productSeller ps on s.idSeller = ps.idPSeller
	group by s.idSeller, s.SocialName
	order by total_vendido desc;

-- Status de pagamento de cada cliente
select c.idClient, c.Fname, c.Lname, pay.typePayment, pay.value, pay.status
	from clients c
	join orders o on c.idClient = o.idOrderClient
	join payments pay on o.idOrder = pay.idOrder; 

-- qual tipo de pagamento foi o mais realizado
select typePayment, count(*) as total
	from payments
	group by typePayment
	order by total desc;

-- Disponibilidade de Produtos no estoque local
select p.Pname, ps.storageLocation, sl.location, ps.quantity
from product p
join storageLocation sl on p.idProduct = sl.idproduct
join productStorage ps on sl.idstorage = ps.idProdStorage
order by p.Pname, ps.quantity desc;

-- Consulta de Status não pendentes
select *
	from delivery
	where status <> 'pendente' and trackingCode is not null;

-- produtos já entregues
select Pname, o.idOrder, d.status
from product p
join productOrder po on p.idProduct = po.idPOproduct
join orders o on po.idPOorder = o.idOrder
join delivery d on d.idOrder = o.idOrder
where d.status = 'Entregue';

-- processo de pedidos que não ainda nao foram confirmados 
select o.idOrder, o.OrderStatus, d.trackingCode
from orders o
join delivery d on d.idOrder = o.idOrder
where o.OrderStatus <> 'Confirmado' and d.trackingCode is not null;

-- clientes que efetuaram pagamentos em dinheiro
select concat(c.Fname, ' ', c.Lname) as client, o.idOrder, p.typePayment, p.value
from clients c
join orders o on c.idClient = o.idOrderClient
join payments p on p.idOrder = o.idOrder
where p.typePayment = 'Dinheiro';

-- tipo de pagamento por cliente
select concat(c.Fname, ' ', c.Lname) as client, o.idOrder, p.typePayment, p.value
from clients c
join orders o on c.idClient = o.idOrderClient
join payments p on p.idOrder = o.idOrder;