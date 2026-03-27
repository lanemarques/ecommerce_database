
create database ecommerce_v1;
use ecommerce_v1;

create table clients( 
	idClient int auto_increment primary key, 
    Fname varchar(10), 
    Minit char(3), 
    Lname varchar(20), 
    CPF char(11) not null, 
    Address varchar(30), 
    constraint unique_cpf_client unique (CPF) 
    );
        
create table clientsPF (
    idClient int primary key,
    CPF char(11) unique,
    foreign key (idClient) references clients(idClient)
);

create table clientsPJ (
    idClient int primary key,
    CNPJ char(14) unique,
    foreign key (idClient) references clients(idClient)
    );
    
create table product( 
    idProduct int auto_increment primary key, 
    Pname varchar(10) not null, classification_kids bool default false, 
    category enum('Eletronico','Vestuario','Brinquedos','Alimentos','Moveis') not null, 
    avaliacao float default 0, 
    size varchar(10) 
    ); 
    
create table orders( 
	idOrder int auto_increment primary key, 
    idOrderClient int, 
    OrderStatus enum('Cancelado','Confirmado', 'Em processamento') not null, 
    OrderDescription varchar(255), 
    SendValue float default 10, 
    paymentCash bool default false, 
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient) 
    ); 
    
create table productStorage( 
    idProdStorage int auto_increment primary key, 
    storageLocation varchar(255), 
    quantity int default 0 
    ); 
    
create table Supplier( 
	idSupplier int auto_increment primary key, 
    SocialName varchar(255) not null, 
    CNPJ char(14) not null, 
    contact char(11) not null, 
    constraint unique_supplier unique (CNPJ) 
    ); 
    
create table seller( 
	idSeller int auto_increment primary key, 
    SocialName varchar(255) not null, 
    AbstName varchar(255), CNPJ char(14), 
    CPF char(11), location varchar(255), 
    contact char(11) not null, 
    constraint unique_cnpj_seller unique (CNPJ), 
    constraint unique_cpf_seller unique (CPF) 
    ); 
    
create table productSeller( 
	idPSeller int, 
    idPproduct int, 
    produQuantity int default 1, 
    primary key (idPSeller, idPproduct), 
    constraint fk_product_seller foreign key (idPSeller) references Seller(idSeller), 
    constraint fk_product_product foreign key (idPproduct) references product(idProduct) 
    ); 
    
create table productOrder( 
	idPOproduct int, 
    idPOorder int, 
    poQuantity int default 1, 
    poStatus enum('Disponível', 'Sem Estoque') default 'Disponível', 
    primary key (idPOproduct, idPOorder), 
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct), 
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder) ); 
    
    create table storageLocation( idproduct int, idstorage int, 
    location varchar(255) not null, 
    primary key (idproduct, idstorage), 
    constraint fk_storage_location_product foreign key (idproduct) 
    references product(idProduct), 
    constraint fk_storage_location_storage foreign key (idstorage) references productStorage(idProdStorage) 
    ); 
    
create table productSupplier( 
	idPsSupplier int, 
    idPsProduct int, 
    quantity int not null, 
    primary key (idPsSupplier, idPsProduct), 
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier), 
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct) 
    );
	
create table payments (
    idPayment int auto_increment primary key,
    idOrder int,
    typePayment enum('Cartao','Pix','Boleto', 'Dinheiro'),
    value decimal(10,2),
    status enum('Pendente','Aprovado','Recusado'),
    foreign key (idOrder) references orders(idOrder)
    );
    
create table delivery (
    idDelivery int auto_increment primary key,
    idOrder int,
    status enum('Pendente','Enviado','Entregue') not null,
	trackingCode varchar(50),
    foreign key (idOrder) references orders(idOrder)
    );