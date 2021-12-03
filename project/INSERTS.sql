INSERT INTO customer VALUES(1,'Bauyrzhan','Balgaziyev','Kazakhstan','Uralsk','Kerderi',121,76);
INSERT INTO customer VALUES(2,'Nurbol','Askarov','Kazakhstan','Uralsk','Abay',139,75);
INSERT INTO customer VALUES(3,'Mirlan','Sagyndykov','Kazakhstan','Uralsk','Kurmagazy',110,49);
INSERT INTO customer VALUES(4,'Asset','Zhumagulov','Poland','Lodz','Jana Matejki',46,10);
INSERT INTO customer VALUES(5,'Islam','Mukanov','Russia','Kazan','Leningradskaya',55,12);
INSERT INTO customer VALUES(6,'Asparukh','Sultanmurat','USA','New Jersey','Baker',12,65);
INSERT INTO customer VALUES(7,'Artur','Zhumagulov','Kazakhstan','Uralsk','Kerderi',45,45);

INSERT INTO customer_mobile_numbers VALUES(1,'87021868131');
INSERT INTO customer_mobile_numbers VALUES(1,'87477774212');
INSERT INTO customer_mobile_numbers VALUES(2,'87081235412');
INSERT INTO customer_mobile_numbers VALUES(2,'87021535245');
INSERT INTO customer_mobile_numbers VALUES(3,'87071652352');
INSERT INTO customer_mobile_numbers VALUES(3,'87474241245');
INSERT INTO customer_mobile_numbers VALUES(3,'87051252152');
INSERT INTO customer_mobile_numbers VALUES(4,'97056256122');
INSERT INTO customer_mobile_numbers VALUES(5,'89065231245');
INSERT INTO customer_mobile_numbers VALUES(6,'97352152155');


INSERT INTO frequent_customer VALUES(1,TRUE,'7777777777');
INSERT INTO frequent_customer VALUES(4,FALSE,'1234567890');
INSERT INTO frequent_customer VALUES(5,TRUE,'1111111111');

INSERT INTO infrequent_customer VALUES(2,'4400456012344564');
INSERT INTO infrequent_customer VALUES(3,'2340456016544564');
INSERT INTO infrequent_customer VALUES(6,'5640456012342564');

INSERT INTO package VALUES(1,'mail',50,'overnight',to_date('21-10-2021','dd-mm-yyyy'),400);
INSERT INTO package VALUES(2,'flat envelop',200,'second day',to_date('15-11-2021','dd-mm-yyyy'),600);
INSERT INTO package VALUES(3,'larger box',7500,'in a month',to_date('12-09-2021','dd-mm-yyyy'),2000);
INSERT INTO package VALUES(4,'flat envelop',150,'in a week',to_date('17-05-2021','dd-mm-yyyy'),800);
INSERT INTO package VALUES(5,'flat envelop',165,'overnight',to_date('21-10-2021','dd-mm-yyyy'),600);
INSERT INTO package VALUES(6,'small box',1200,'second day',to_date('24-06-2021','dd-mm-yyyy'),1000);
INSERT INTO package VALUES(7,'small box',1700,'overnight',to_date('17-08-2021','dd-mm-yyyy'),900);
INSERT INTO package VALUES(8,'larger box',5000,'second day',to_date('19-09-2021','dd-mm-yyyy'),1500);
INSERT INTO package VALUES(9,'mail',100,'overnight',to_date('19-01-2021','dd-mm-yyyy'),650);
INSERT INTO package VALUES(10,'larger box',9000,'overnight',to_date('25-12-2021','dd-mm-yyyy'),3500);
INSERT INTO package VALUES(11,'flat envelop',400,'overnight',to_date('25-12-2021','dd-mm-yyyy'),700);
INSERT INTO package VALUES(12,'small box',1150,'in a week',to_date('27-02-2021','dd-mm-yyyy'),1300);
INSERT INTO package VALUES(13,'small box',1400,'third day',to_date('18-02-2021','dd-mm-yyyy'),1500);
INSERT INTO package VALUES(14,'mail',75,'overnight',to_date('26-10-2021','dd-mm-yyyy'),600);
INSERT INTO package VALUES(15,'small box',1500,'second day',to_date('12-01-2021','dd-mm-yyyy'),1200);

INSERT INTO send VALUES(1,to_date('20-10-2021','dd-mm-yyyy'),1);
INSERT INTO send VALUES(1,to_date('24-12-2021','dd-mm-yyyy'),10);
INSERT INTO send VALUES(1,to_date('10-01-2021','dd-mm-yyyy'),15);
INSERT INTO send VALUES(1,to_date('17-09-2021','dd-mm-yyyy'),8);
INSERT INTO send VALUES(1,to_date('20-02-2021','dd-mm-yyyy'),12);
INSERT INTO send VALUES(2,to_date('25-10-2021','dd-mm-yyyy'),14);
INSERT INTO send VALUES(2,to_date('12-08-2021','dd-mm-yyyy'),3);
INSERT INTO send VALUES(2,to_date('22-06-2021','dd-mm-yyyy'),6);
INSERT INTO send VALUES(3,to_date('16-08-2021','dd-mm-yyyy'),7);
INSERT INTO send VALUES(3,to_date('15-02-2021','dd-mm-yyyy'),13);
INSERT INTO send VALUES(4,to_date('24-12-2021','dd-mm-yyyy'),11);
INSERT INTO send VALUES(4,to_date('18-01-2021','dd-mm-yyyy'),9);
INSERT INTO send VALUES(1,to_date('30-01-2021','dd-mm-yyyy'),9);
INSERT INTO send VALUES(5,to_date('13-11-2021','dd-mm-yyyy'),2);
INSERT INTO send VALUES(5,to_date('10-05-2021','dd-mm-yyyy'),4);
INSERT INTO send VALUES(6,to_date('20-10-2021','dd-mm-yyyy'),5);

INSERT INTO receives VALUES(2,to_date('23-10-2021','dd-mm-yyyy'),1);
INSERT INTO receives VALUES(5,null,10);
INSERT INTO receives VALUES(3,to_date('11-01-2021','dd-mm-yyyy'),15);
INSERT INTO receives VALUES(4,to_date('19-09-2021','dd-mm-yyyy'),8);
INSERT INTO receives VALUES(6,to_date('03-03-2021','dd-mm-yyyy'),12);
INSERT INTO receives VALUES(1,to_date('26-10-2021','dd-mm-yyyy'),14);
INSERT INTO receives VALUES(6,to_date('21-09-2021','dd-mm-yyyy'),3);
INSERT INTO receives VALUES(4,to_date('23-06-2021','dd-mm-yyyy'),6);
INSERT INTO receives VALUES(2,to_date('16-08-2021','dd-mm-yyyy'),7);
INSERT INTO receives VALUES(4,to_date('28-02-2021','dd-mm-yyyy'),13);
INSERT INTO receives VALUES(5,null,11);
INSERT INTO receives VALUES(1,to_date('22-01-2021','dd-mm-yyyy'),9);
INSERT INTO receives VALUES(4,null,2);
INSERT INTO receives VALUES(6,to_date('17-05-2021','dd-mm-yyyy'),4);
INSERT INTO receives VALUES(5,to_date('26-10-2021','dd-mm-yyyy'),5);
INSERT INTO receives VALUES(4,to_date('15-02-2021','dd-mm-yyyy'),9);

INSERT INTO returning_shipment VALUES(9,'I was not supposed to get that message',111);

INSERT INTO regular_shipment VALUES(1,TRUE);
INSERT INTO regular_shipment VALUES(2,FALSE);
INSERT INTO regular_shipment VALUES(3,TRUE);
INSERT INTO regular_shipment VALUES(4,TRUE);
INSERT INTO regular_shipment VALUES(5,FALSE);
INSERT INTO regular_shipment VALUES(6,TRUE);
INSERT INTO regular_shipment VALUES(7,TRUE);
INSERT INTO regular_shipment VALUES(8,FALSE);
INSERT INTO regular_shipment VALUES(10,FALSE);
INSERT INTO regular_shipment VALUES(11,TRUE);
INSERT INTO regular_shipment VALUES(12,FALSE);
INSERT INTO regular_shipment VALUES(13,TRUE);
INSERT INTO regular_shipment VALUES(14,FALSE);
INSERT INTO regular_shipment VALUES(15,TRUE);


INSERT INTO content_unimportant_shipment VALUES(1);
INSERT INTO content_unimportant_shipment VALUES(15);
INSERT INTO content_unimportant_shipment VALUES(14);
INSERT INTO content_unimportant_shipment VALUES(7);

INSERT INTO content_matter_shipment VALUES(10,TRUE,FALSE,'Computer',400000);
INSERT INTO content_matter_shipment VALUES(8,TRUE,FALSE,'Provision',20000);
INSERT INTO content_matter_shipment VALUES(12,TRUE,FALSE,'Picture',50000);
INSERT INTO content_matter_shipment VALUES(3,TRUE,FALSE,'Microwave',70000);
INSERT INTO content_matter_shipment VALUES(6,TRUE,FALSE,'Desk',15000);
INSERT INTO content_matter_shipment VALUES(13,TRUE,FALSE,'Chair',10000);
INSERT INTO content_matter_shipment VALUES(11,TRUE,FALSE,'dishes',6000);
INSERT INTO content_matter_shipment VALUES(2,TRUE,FALSE,'notebooks',1000);
INSERT INTO content_matter_shipment VALUES(4,TRUE,FALSE,'blackboard',12000);
INSERT INTO content_matter_shipment VALUES(5,TRUE,FALSE,'documents',0);

INSERT INTO temporary_storage VALUES(1,5000);
INSERT INTO temporary_storage VALUES(2,3500);
INSERT INTO temporary_storage VALUES(3,4250);
INSERT INTO temporary_storage VALUES(4,1500);
INSERT INTO temporary_storage VALUES(5,1250);
INSERT INTO temporary_storage VALUES(6,1300);
INSERT INTO temporary_storage VALUES(7,1000);
INSERT INTO temporary_storage VALUES(8,2000);
INSERT INTO temporary_storage VALUES(9,2000);
INSERT INTO temporary_storage VALUES(10,2000);
INSERT INTO temporary_storage VALUES(11,10000);

INSERT INTO warehouse VALUES(1,1,'Kazakhstan','Almaty','3 microdistinct',38);
INSERT INTO warehouse VALUES(2,2,'Kazakhstan','Uralsk','Kerderi',100);
INSERT INTO warehouse VALUES(3,4,'Russia','Mockow','Lubino',322);
INSERT INTO warehouse VALUES(10,3,'Poland','Warsaw','Beneng',288);
INSERT INTO warehouse VALUES(11,5,'USA','New York','China Town',44);

INSERT INTO truck VALUES(4,1731,'Ford F-250');
INSERT INTO truck VALUES(5,1700,'Ram 1500 Classic');
INSERT INTO truck VALUES(6,1602,'Toyota Tundra.');
INSERT INTO truck VALUES(7,1100,'Ram 1500 Classic');

INSERT INTO plane VALUES(8,102,'P-51 Mustang');
INSERT INTO plane VALUES(9,152,'P-51 Mustang');

INSERT INTO currently_at VALUES(10,2);
INSERT INTO currently_at VALUES(11,4);
INSERT INTO currently_at VALUES(2,3);

INSERT INTO was VALUES(1,2,to_date('20-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(1,2,to_date('21-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(1,4,to_date('22-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(1,4,to_date('23-10-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(2,10,to_date('13-11-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(2,4,to_date('14-11-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(2,3,to_date('15-11-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(3,2,to_date('12-08-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,2,to_date('13-08-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,2,to_date('14-08-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,4,to_date('15-08-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,4,to_date('16-08-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,4,to_date('17-08-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,3,to_date('18-08-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,8,to_date('19-09-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,8,to_date('20-09-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(3,8,to_date('21-09-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(4,3,to_date('10-05-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(4,3,to_date('11-05-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(4,3,to_date('12-05-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(4,3,to_date('13-05-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(4,3,to_date('14-05-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(4,3,to_date('15-05-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(4,9,to_date('16-05-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(4,11,to_date('17-05-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(5,11,to_date('20-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(5,11,to_date('21-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(5,11,to_date('22-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(5,11,to_date('23-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(5,9,to_date('24-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(5,3,to_date('25-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(5,3,to_date('26-10-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(6,2,to_date('22-06-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(6,8,to_date('23-06-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(7,6,to_date('16-08-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(8,2,to_date('17-09-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(8,4,to_date('18-09-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(8,10,to_date('19-09-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(9,10,to_date('18-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,6,to_date('19-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,3,to_date('20-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,4,to_date('21-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('22-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('30-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('31-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('01-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('02-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('03-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('04-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('05-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('06-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('07-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,2,to_date('08-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,8,to_date('09-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,3,to_date('10-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,6,to_date('11-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,6,to_date('12-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,6,to_date('13-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,10,to_date('14-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(9,7,to_date('15-02-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(10,2,to_date('25-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(10,2,to_date('26-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(10,2,to_date('27-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(10,4,to_date('28-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(10,4,to_date('29-12-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(11,10,to_date('24-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(11,10,to_date('25-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(11,10,to_date('26-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(11,10,to_date('27-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(11,10,to_date('28-12-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(11,4,to_date('29-12-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(12,2,to_date('20-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,2,to_date('21-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,2,to_date('22-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,2,to_date('23-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,2,to_date('24-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,2,to_date('25-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,2,to_date('26-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,2,to_date('27-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,9,to_date('28-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,11,to_date('01-03-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,11,to_date('02-03-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(12,11,to_date('03-03-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(13,2,to_date('15-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('16-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('17-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('18-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('19-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('20-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('21-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('22-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,2,to_date('23-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,6,to_date('24-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,6,to_date('25-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,6,to_date('26-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,6,to_date('27-02-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(13,3,to_date('28-02-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(14,6,to_date('25-10-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(14,6,to_date('26-10-2021','dd-mm-yyyy'));

INSERT INTO was VALUES(15,6,to_date('10-01-2021','dd-mm-yyyy'));
INSERT INTO was VALUES(15,6,to_date('11-01-2021','dd-mm-yyyy'));