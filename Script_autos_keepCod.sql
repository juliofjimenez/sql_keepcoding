
-- creamos esquema 
create schema autoskeepcod authorization bhmjexvg;


/*
	Tabla de Color ---------
*/
create table autoskeepcod.color(
	idcolor varchar(20) not null, -- PK
	name varchar(200) not null,
	description varchar(512) null
);

--PK
alter table autoskeepcod.color
add constraint color_PK primary key(idcolor);

---- cargar los colores
insert into autoskeepcod.color (idcolor, name) values('1','Negro');
insert into autoskeepcod.color (idcolor, name) values('2','Azul');
insert into autoskeepcod.color (idcolor, name) values('3','Marrón');
insert into autoskeepcod.color (idcolor, name) values('4','Gris');
insert into autoskeepcod.color (idcolor, name) values('5','Verde');
insert into autoskeepcod.color (idcolor, name) values('6','Naranja');
insert into autoskeepcod.color (idcolor, name) values('7','Rosa');
insert into autoskeepcod.color (idcolor, name) values('8','Púrpura');
insert into autoskeepcod.color (idcolor, name) values('9','Rojo');
insert into autoskeepcod.color (idcolor, name) values('10','Blanco');
insert into autoskeepcod.color (idcolor, name) values('11','Amarillo');

/*
	Tabla de Grupo mepresarial ---------
*/
create table autoskeepcod.businessgroup(
	idbusinessgroup varchar(20) not null, -- PK
	name varchar(200) not null,
	description varchar(512) null
);

--PK
alter table autoskeepcod.businessgroup
add constraint businessgroup_PK primary key(idbusinessgroup);

---- cargar los grupos de marcas
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('1','BMW Group');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('2','Daimler');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('3','Ford Motor Company');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('4','Geely');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('5','General Motors');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('6','Honda Motor');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('7','Nissan Motor');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('8','Hyundai Motor Company');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('9','Renault Group');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('10','SAIC Motor');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('11','Tata Motors');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('12','Toyota Motor');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('13','Volkswagen Group');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('14','Suzuki');
insert into autoskeepcod.businessgroup (idbusinessgroup, name) values('15','Stellantis');


/*
	Tabla de Marca de auto ---------
*/
create table autoskeepcod.brandcar(
	idbrandcar varchar(20) not null, -- PK
	idbusinessgroup varchar(20) not null, -- FK
	name varchar(200) not null,
	description varchar(512) null
);

--PK 
alter table autoskeepcod.brandcar
add constraint brandcar_PK primary key(idbrandcar);
--FK
alter table autoskeepcod.brandcar
add constraint brandcar_businessgroup_FK foreign key(idbusinessgroup)
references autoskeepcod.businessgroup(idbusinessgroup);

---- cargar las marca de los autos
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('1','1','BMW');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('2','1','Rolls Royce');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('3','1','Mini');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('4','2','Smart');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('5','2','Mercedes-Benz');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('6','3','Lincoln M. Co.');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('7','3','Ford');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('8','4','Volvo');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('9','4','London Taxi C.');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('10','4','Geely');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('11','5','Baojun');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('12','5','Buick');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('13','5','Cadillac');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('14','5','Chevrolet');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('15','5','GMC');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('16','5','Holden');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('17','5','Opel');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('18','5','Vauxhall');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('19','5','Wuling Motors');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('20','6','Acura');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('21','6','Honda');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('22','7','Datsun');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('23','7','Infiniti');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('24','7','Nissan');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('25','8','Hyundai');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('26','8','Kia');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('27','9','Samsung');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('28','9','Reanult');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('29','9','Dacia');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('30','10','Roewe');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('31','10','MG');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('32','10','Maxus');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('33','10','Yuejin');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('34','10','Yongyan');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('35','10','Sunwin');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('36','11','Tata Motors');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('37','11','Land Rover');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('38','11','Jaguar');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('39','12','Toyota');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('40','12','Lexus');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('41','12','Daihatsu');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('42','13','Audi');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('43','13','Bentley');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('44','13','Bugatti');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('45','13','Lamborghini');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('46','13','Porsche');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('47','13','SEAT');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('48','13','Skoda');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('49','13','Volkswagen');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('50','14','Suzuki');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('51','15','Chrysler');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('52','15','Fiat');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('53','15','Citroen');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('54','15','DS Autom.');
insert into autoskeepcod.brandcar (idbrandcar,idbusinessgroup, name) values('55','15','Peugeot');


/*
	Tabla de Aseguradora ---------
*/
create table autoskeepcod.insurancecompany(
	idinsurancecompany varchar(20) not null, -- PK
	name varchar(200) not null,
	description varchar(512) null
);

--PK
alter table autoskeepcod.insurancecompany
add constraint insurancecompany_PK primary key(idinsurancecompany);

---- cargar las compañias de seguros
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('1','AIG SEGUROS MÉXICO, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('2','ALLIANZ MEXICO, S.A.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('3','ANA COMPAÑIA DE SEGUROS, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('4','AXA SEGUROS, S.A. de C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('5','CHUBB SEGUROS MÉXICO, S.A.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('6','CITIBANAMEX SEGUROS, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('7','EL ÁGUILA COMPAÑÍA DE SEGUROS, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('8','GENERAL DE SEGUROS, S.A.B.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('9','GRUPO NACIONAL PROVINCIAL, S.A.B.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('10','HDI SEGUROS, S.A. de C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('11','HSBC SEGUROS, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('12','LA LATINOAMERICANA SEGUROS, S.A.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('13','MAPFRE MÉXICO, S.A.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('14','QUALITAS COMPAÑÍA DE SEGUROS, S.A.B. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('15','SEGUROS AFIRME, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('16','SEGUROS ATLAS, S.A.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('17','SEGUROS AZTECA, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('18','SEGUROS BANORTE, S.A. DE C.V.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('19','SEGUROS EL POTOSÍ, S.A.');
insert into autoskeepcod.insurancecompany (idinsurancecompany, name) values('20','ZURICH COMPAÑÍA DE SEGUROS, S.A.');


/*
	Tabla de Moneda ---------
*/
create table autoskeepcod.currency(
    idcurrency varchar(20) not null, -- PK
	name varchar(200) not null,
	description varchar(512) null
);

--PK
alter table autoskeepcod.currency
add constraint currency_PK primary key(idcurrency);

---- cargar las divisas de las monedas
insert into autoskeepcod.currency (idcurrency, name) values('MXN','Peso Mexicano');
insert into autoskeepcod.currency (idcurrency, name) values('EUR','Euro');
insert into autoskeepcod.currency (idcurrency, name) values('USD','Dólar Estados Unidos');
insert into autoskeepcod.currency (idcurrency, name) values('CAD','Dólar Canadiense');
insert into autoskeepcod.currency (idcurrency, name) values('JPY','Yen Japones');

/*
	Tabla de Auto ---------
*/
create table autoskeepcod.car(
    idcar varchar(20) not null, -- PK
	name varchar(200) not null,
	idbrandcar varchar(20) not null, -- PK, FK
	modelo integer not null,
	totalkm varchar(20) not null,
	idcolor varchar(20) not null, -- PK, FK
	matricula varchar(20) not null,
	dt_buy date not null,
	dt_termination date not null default '4000-01-01',
	description varchar(512) null
);

--PK 
alter table autoskeepcod.car
add constraint car_PK primary key(idcar);
--FK
alter table autoskeepcod.car
add constraint car_brandcar_FK foreign key(idbrandcar)
references autoskeepcod.brandcar(idbrandcar);
--FK
alter table autoskeepcod.car
add constraint car_color_FK foreign key(idcolor)
references autoskeepcod.color(idcolor);

---- cargar las autos
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('1','i3','1',2021,'0','11','V5837','2021-5-17');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('2','EQA SUV','5',2016,'0','7','X7909','2016-12-14');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('3','Mustang','7',2018,'0','8','B6005','2018-5-10');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('4','XC40','8',2021,'0','5','V1141','2021-6-7');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('5','Spark','14',2021,'0','3','R1135','2021-9-28');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('6','Malibu','14',2018,'0','8','A6691','2018-4-12');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('7','Corsa','17',2021,'0','7','N8682','2021-3-14');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('8','City','21',2020,'0','8','L2703','2020-12-29');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('9','Civic','21',2018,'0','2','I4965','2018-11-3');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('10','Sentra','24',2016,'0','2','W2023','2016-7-8');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('11','Altima','24',2017,'0','1','R7634','2017-3-23');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('12','Versa','24',2020,'0','7','T2324','2020-12-11');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('13','Accent','25',2020,'0','7','B9967','2020-10-21');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('14','Elantra','25',2021,'0','10','C6524','2021-3-24');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('15','Rio','26',2017,'0','6','Q8118','2017-5-21');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('16','Forte','26',2018,'0','4','Y5548','2018-2-15');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('17','Logan','28',2020,'0','9','M4269','2020-6-19');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('18','Kwid','28',2017,'0','10','F3999','2017-6-27');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('19','Koleos','28',2017,'0','9','F6641','2017-4-27');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('20','MG5','31',2020,'0','5','H7716','2020-9-26');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('21','GT','31',2016,'0','6','G3911','2016-8-3');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('22','Evoque','37',2018,'0','6','M6334','2018-3-19');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('23','Corolla','39',2017,'0','11','R7334','2017-8-1');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('24','Camry','39',2020,'0','8','C2021','2020-2-14');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('25','A4','42',2017,'0','3','N3687','2017-1-15');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('26','Ibiza','47',2018,'0','3','D8036','2018-1-29');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('27','Toledo','47',2021,'0','10','H3806','2021-6-19');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('28','Jetta','49',2017,'0','4','F4278','2017-7-16');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('29','Vento','49',2017,'0','3','M5110','2017-3-20');
insert into autoskeepcod.car (idcar,name,idbrandcar, modelo, totalkm, idcolor, matricula, dt_buy) values('30','Virtus','49',2018,'10000','1','G2458','2018-3-20');

--baja de una auto
update autoskeepcod.car 
set dt_termination  = '2022-01-20', 
     description = 'baja'
where idcar  = '30';


/*
	Tabla de Poliza de seguro ---------
*/
create table autoskeepcod.insurancepolicy(
	idcar varchar(20) not null, -- PK, FK
	idinsurancepolicy varchar(20) not null, -- PK
	idinsurancecompany varchar(20) not null, -- FK
	idcurrency varchar(20) not null, -- FK
	amount integer not null,
	dt_hire date not null, --PK
	dt_termination date not null default '4000-01-01', 
	description varchar(512) null
);

--PK
alter table autoskeepcod.insurancepolicy
add constraint insurancepolicy_PK primary key(idcar,idinsurancepolicy);
--FK
alter table autoskeepcod.insurancepolicy
add constraint insurancepolicy_car_FK foreign key(idcar)
references autoskeepcod.car(idcar);
--FK
alter table autoskeepcod.insurancepolicy
add constraint insurancepolicy_insurancecompany_FK foreign key(idinsurancecompany)
references autoskeepcod.insurancecompany(idinsurancecompany);
--FK
alter table autoskeepcod.insurancepolicy
add constraint insurancepolicy_currency_FK foreign key(idcurrency)
references autoskeepcod.currency(idcurrency);

---- cargar las polizas
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('1','1','11','MXN',4640,'2021-5-17');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('2','2','9','EUR',5752,'2016-12-14');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('3','3','5','USD',4688,'2018-5-10');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('4','4','17','MXN',2868,'2021-6-7');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('5','5','8','EUR',7621,'2021-9-28');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('6','6','2','USD',2142,'2018-4-12');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('7','7','7','MXN',8239,'2021-3-14');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('8','8','11','EUR',2917,'2020-12-29');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('9','9','8','USD',6042,'2018-11-3');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('10','10','7','MXN',6606,'2016-7-8');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('11','11','14','EUR',8453,'2017-3-23');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('12','12','14','USD',9016,'2020-12-11');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('13','13','8','MXN',2161,'2020-10-21');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('14','14','6','EUR',3524,'2021-3-24');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('15','15','10','USD',6193,'2017-5-21');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('16','16','16','MXN',2186,'2018-2-15');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('17','17','3','EUR',2838,'2020-6-19');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('18','18','10','USD',6496,'2017-6-27');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('19','19','5','MXN',7940,'2017-4-27');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('20','20','13','EUR',4053,'2020-9-26');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('21','21','5','USD',9165,'2016-8-3');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('22','22','3','MXN',3440,'2018-3-19');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('23','23','2','EUR',6621,'2017-8-1');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('24','24','20','USD',7580,'2020-2-14');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('25','25','7','MXN',2336,'2017-1-15');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('26','26','3','EUR',7356,'2018-1-29');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('27','27','5','USD',8621,'2021-6-19');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('28','28','19','MXN',4063,'2017-7-16');
insert into autoskeepcod.insurancepolicy (idcar, idinsurancepolicy, idinsurancecompany,idcurrency,amount,dt_hire) values('29','29','5','EUR',4477,'2017-3-20');


/*
	Tabla de Tipo Servicio ---------
*/
create table autoskeepcod.typeservice(
	idtypeservice varchar(20) not null, -- PK
	name varchar(200) not null,
	description varchar(512) null
);

--PK
alter table autoskeepcod.typeservice
add constraint typeservice_PK primary key(idtypeservice);

---- cargar los tipode servicios
insert into autoskeepcod.typeservice (idtypeservice, name) values('1','Servicio 10Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('2','Servicio 20Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('3','Servicio 30Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('4','Servicio 40Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('5','Servicio 50Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('6','Servicio 60Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('7','Servicio 70Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('8','Servicio 80Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('9','Servicio 90Km');
insert into autoskeepcod.typeservice (idtypeservice, name) values('10','Servicio Menor');
insert into autoskeepcod.typeservice (idtypeservice, name) values('11','Servicio Mayor');
insert into autoskeepcod.typeservice (idtypeservice, name) values('12','Reparación');

/*
	Tabla de Servicio ---------
*/
create table autoskeepcod.service(
	idcar varchar(20) not null, -- FK
	idservice varchar(20) not null, -- PK
	idtypeservice varchar(20) not null, -- FK
	idcurrency varchar(20) not null, -- FK
	amount integer not null,
	--dt_service date not null, 
	km integer not null,
	description varchar(512) null
);

--PK
alter table autoskeepcod.service
add constraint service_PK primary key(idservice);
--FK
alter table autoskeepcod.service
add constraint service_car_FK foreign key(idcar)
references autoskeepcod.car(idcar);
--FK
alter table autoskeepcod.service
add constraint service_typeservice_FK foreign key(idtypeservice)
references autoskeepcod.typeservice(idtypeservice);
--FK
alter table autoskeepcod.service
add constraint service_currency_FK foreign key(idcurrency)
references autoskeepcod.currency(idcurrency);

---- cargar los servicios
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('1','1','4','USD',1324,40300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('2','2','3','MXN',2995,30300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('3','3','3','EUR',458,30300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('4','4','4','USD',1565,40300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('5','5','6','MXN',2759,60300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('6','6','11','EUR',1368,98342);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('7','7','3','USD',2340,30300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('8','8','2','MXN',563,20300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('9','9','5','EUR',392,50300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('10','10','6','USD',2007,60300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('11','11','2','MXN',2554,20300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('12','12','8','EUR',2645,80300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('13','13','6','USD',501,60300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('14','14','4','MXN',2532,40300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('15','15','12','EUR',2901,42641);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('16','16','9','USD',1738,90300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('17','17','10','MXN',745,4447);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('18','18','1','EUR',867,10300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('19','19','5','USD',346,50300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('20','20','6','MXN',123,60300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('21','21','1','EUR',1463,10300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('22','22','6','USD',1074,60300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('23','23','7','MXN',2192,70300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('24','24','11','EUR',2797,96120);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('25','25','1','USD',1178,10300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('26','26','2','MXN',2027,20300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('27','27','3','EUR',2534,30300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('28','28','2','USD',831,20300);
insert into autoskeepcod.service (idcar,idservice, idtypeservice, idcurrency,amount,km) values('29','29','3','MXN',531,30300);

/*
	Tabla de Historico Servicio ---------
*/
create table autoskeepcod.hist_service(
	idhist_service varchar(20) not null, -- PK
	idservice varchar(20) not null, -- FK
	dt_service date not null, 
	description varchar(512) null
);

--PK
alter table autoskeepcod.hist_service
add constraint hist_service_PK primary key(idhist_service);
--FK
alter table autoskeepcod.hist_service
add constraint hist_service_service_FK foreign key(idservice)
references autoskeepcod.service(idservice);

---- cargar los servicios historicos
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('1','1','2021-9-20');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('2','2','2016-8-19');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('3','3','2018-9-11');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('4','4','2021-10-20');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('5','5','2021-4-1');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('6','6','2018-9-4');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('7','7','2021-2-14');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('8','8','2020-1-28');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('9','9','2018-2-13');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('10','10','2016-7-17');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('11','11','2017-6-10');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('12','12','2020-9-22');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('13','13','2020-12-3');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('14','14','2021-4-7');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('15','15','2017-10-2');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('16','16','2018-5-24');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('17','17','2020-10-4');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('18','18','2017-12-7');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('19','19','2017-3-7');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('20','20','2020-7-29');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('21','21','2016-6-28');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('22','22','2018-12-1');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('23','23','2017-2-12');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('24','24','2020-11-25');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('25','25','2017-5-2');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('26','26','2018-9-8');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('27','27','2021-2-8');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('28','28','2017-3-7');
insert into autoskeepcod.hist_service (idhist_service,idservice, dt_service) values('29','29','2017-6-3');

/*
 * Consulta enunciado
 * 
 * Consulta SQL para sacar el siguiente listado de coches activos que hay en KeepCoding:
	- Nombre modelo, marca y grupo de coches (los nombre de todos)
	- Fecha de compra
	- Matricula
	- Nombre del color del coche
	- Total kilómetros
	- Nombre empresa que esta asegurado el coche
	- Numero de póliza
 */
select a.idcar, a."name", a.modelo, b.name as marca, c."name" as grupo_empresarial, 
a.dt_buy as fecha_compra, d."name" as color, e.km, g."name" as aseguradora, f.idinsurancepolicy as poliza,
(select max(ss.km) from autoskeepcod.service ss where ss.idcar = e.idcar)
from autoskeepcod.car a 
inner join autoskeepcod.brandcar b on a.idbrandcar = b.idbrandcar   
inner join autoskeepcod.businessgroup c on b.idbusinessgroup = c.idbusinessgroup 
inner join autoskeepcod.color d on a.idcolor = d.idcolor 
inner join autoskeepcod.service e on a.idcar = e.idcar 
inner join autoskeepcod.insurancepolicy f on a.idcar = f.idcar 
inner join autoskeepcod.insurancecompany g on f.idinsurancecompany = g.idinsurancecompany
where a.dt_termination = '4000-01-01';
