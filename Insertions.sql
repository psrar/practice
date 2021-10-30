use equipment;
insert into employee (fio, position) values ('Малыхина Ольга Юрьевна', 'Заведующая учебно-вычислительным центромб преподаватель');
insert into employee (fio, position) values ('Осипова Надежда Михайловна', 'Преподаватель');
insert into employee (fio, position) values ('Митрошенкова Елена Алексеевна', 'Преподаватель');
insert into employee (fio, position) values ('Петренко Людмила Борисовна', 'Преподаватель');
insert into employee (fio, position) values ('Тамахина Ирина Андрониковна', 'Преподаватель');
insert into employee (fio, position) values ('Жилкина Надежда Александровна', 'Преподаватель');
select * from employee;

insert into room values (122, 6);
insert into room values (123, 6);
insert into room values (124, 6);
insert into room values (210, 6);
select * from room;

insert into equipment_type (type_name) values ('Системный блок');
insert into equipment_type (type_name) values ('Монитор');
insert into equipment_type (type_name) values ('Компьютерная мышь');
insert into equipment_type (type_name) values ('Клавиатура');
insert into equipment_type (type_name) values ('Смарт-доска');
insert into equipment_type (type_name) values ('Ноутбук');
insert into equipment_type (type_name) values ('Принтер');
insert into equipment_type (type_name) values ('Сканер');
insert into equipment_type (type_name) values ('Проектор');
insert into equipment_type (type_name) values ('МФУ'); #Многофункциональное устройство
insert into equipment_type (type_name) values ('ИБП'); #Источник бесперебойного питания
select * from equipment_type;

insert into warehouse (descr) values('Склад в подвале');
insert into warehouse (descr) values('Склад на пятом этаже');
insert into warehouse (descr) values('Склад на первом этаже');
select * from warehouse;

insert into detail_type (type_name) values ('Картридж для принтера');
insert into detail_type (type_name) values ('Видеокарта');
insert into detail_type (type_name) values ('Материнская плата');
insert into detail_type (type_name) values ('Процессор');
insert into detail_type (type_name) values ('Кулер');
insert into detail_type (type_name) values ('HDD');
insert into detail_type (type_name) values ('SSD');
insert into detail_type (type_name) values ('Блок питания');
select * from detail_type;

#Системные блоки
insert into equipment values (1, 122, NULL, 1),
(2, 122, NULL, 1), (3, 122, NULL, 1), (4, 122, NULL, 1),
(5, 122, NULL, 1), (6, 122, NULL, 1), (7, 122, NULL, 1),
(8, 122, NULL, 1), (9, 122, NULL, 1), (10, 122, NULL, 1);
insert into equipment values (11, 123, NULL, 1),
(12, 123, NULL, 1), (13, 123, NULL, 1), (14, 123, NULL, 1),
(15, 123, NULL, 1), (16, 123, NULL, 1), (17, 123, NULL, 1),
(18, 123, NULL, 1), (19, 123, NULL, 1), (20, 123, NULL, 1);
#Мониторы
insert into equipment values (21, 122, NULL, 2),
(22, 122, NULL, 2), (23, 122, NULL, 2), (24, 122, NULL, 2),
(25, 122, NULL, 2), (26, 122, NULL, 2), (27, 122, NULL, 2),
(28, 122, NULL, 2), (29, 122, NULL, 2), (30, 122, NULL, 2);
insert into equipment values (31, 123, NULL, 2),
(32, 123, NULL, 2), (33, 123, NULL, 2), (34, 123, NULL, 2),
(35, 123, NULL, 2), (36, 123, NULL, 2), (37, 123, NULL, 2),
(38, 123, NULL, 2), (39, 123, NULL, 2), (40, 123, NULL, 2);
#Компьютерные мыши
insert into equipment values (41, 122, NULL, 3),
(42, 122, NULL, 3), (43, 122, NULL, 3), (44, 122, NULL, 3),
(45, 122, NULL, 3), (46, 122, NULL, 3), (47, 122, NULL, 3),
(48, 122, NULL, 3), (49, 122, NULL, 3), (50, 122, NULL, 3);
insert into equipment values (51, 123, NULL, 2),
(52, 123, NULL, 3), (53, 123, NULL, 3), (54, 123, NULL, 3),
(55, 123, NULL, 3), (56, 123, NULL, 3), (57, 123, NULL, 3),
(58, 123, NULL, 3), (59, 123, NULL, 3), (60, 123, NULL, 3);
#Клавиатуры
insert into equipment values (61, 122, NULL, 4),
(62, 122, NULL, 4), (63, 122, NULL, 4), (64, 122, NULL, 4),
(65, 122, NULL, 4), (66, 122, NULL, 4), (67, 122, NULL, 4),
(68, 122, NULL, 4), (69, 122, NULL, 4), (70, 122, NULL, 4);
insert into equipment values (71, 123, NULL, 4),
(72, 123, NULL, 4), (73, 123, NULL, 4), (74, 123, NULL, 4),
(75, 123, NULL, 4), (76, 123, NULL, 4), (77, 123, NULL, 4),
(78, 123, NULL, 4), (79, 123, NULL, 4), (80, 123, NULL, 4);
select * from equipment;

#Материнские платы
insert into detail (manufacturer, model, detail_type, equipment) values
('GIGABYTE', 'GA-A320M-H', 3, 1), ('GIGABYTE', 'GA-A320M-H', 3, 2), ('GIGABYTE', 'GA-A320M-H', 3, 3),
('GIGABYTE', 'GA-A320M-H', 3, 4), ('GIGABYTE', 'GA-A320M-H', 3, 5), ('GIGABYTE', 'GA-A320M-H', 3, 6),
('GIGABYTE', 'GA-A320M-H', 3, 7), ('GIGABYTE', 'GA-A320M-H', 3, 8), ('GIGABYTE', 'GA-A320M-H', 3, 9),
('GIGABYTE', 'GA-A320M-H', 3, 10), ('GIGABYTE', 'GA-A320M-H', 3, 11), ('GIGABYTE', 'GA-A320M-H', 3, 12),
('GIGABYTE', 'GA-A320M-H', 3, 13), ('GIGABYTE', 'GA-A320M-H', 3, 14), ('GIGABYTE', 'GA-A320M-H', 3, 15),
('GIGABYTE', 'GA-A320M-H', 3, 16), ('GIGABYTE', 'GA-A320M-H', 3, 17), ('GIGABYTE', 'GA-A320M-H', 3, 18),
('GIGABYTE', 'GA-A320M-H', 3, 19), ('GIGABYTE', 'GA-A320M-H', 3, 20);
#Процессор
insert into detail (manufacturer, model, detail_type, equipment) values
('Intel', 'Core i5 9400F', 4, 1), ('Intel', 'Core i5 9400F', 4, 2), ('Intel', 'Core i5 9400F', 4, 3),
('Intel', 'Core i5 9400F', 4, 4), ('Intel', 'Core i5 9400F', 4, 5), ('Intel', 'Core i5 9400F', 4, 6),
('Intel', 'Core i5 9400F', 4, 7), ('Intel', 'Core i5 9400F', 4, 8), ('Intel', 'Core i5 9400F', 4, 9),
('Intel', 'Core i5 9400F', 4, 10), ('Intel', 'Core i5 9400F', 4, 11), ('Intel', 'Core i5 9400F', 4, 12),
('Intel', 'Core i5 9400F', 4, 13), ('Intel', 'Core i5 9400F', 4, 14), ('Intel', 'Core i5 9400F', 4, 15),
('Intel', 'Core i5 9400F', 4, 16), ('Intel', 'Core i5 9400F', 4, 17), ('Intel', 'Core i5 9400F', 4, 18),
('Intel', 'Core i5 9400F', 4, 19), ('Intel', 'Core i5 9400F', 4, 20);
#Видеокарта
insert into detail (manufacturer, model, detail_type, equipment) values
('MSI NVIDIA', 'GeForce GT 730', 2, 1), ('MSI NVIDIA', 'GeForce GT 730', 2, 2), ('MSI NVIDIA', 'GeForce GT 730', 2, 3),
('MSI NVIDIA', 'GeForce GT 730', 2, 4), ('MSI NVIDIA', 'GeForce GT 730', 2, 5), ('MSI NVIDIA', 'GeForce GT 730', 2, 6),
('MSI NVIDIA', 'GeForce GT 730', 2, 7), ('MSI NVIDIA', 'GeForce GT 730', 2, 8), ('MSI NVIDIA', 'GeForce GT 730', 2, 9),
('MSI NVIDIA', 'GeForce GT 730', 2, 10), ('MSI NVIDIA', 'GeForce GT 730', 2, 11), ('MSI NVIDIA', 'GeForce GT 730', 2, 12),
('MSI NVIDIA', 'GeForce GT 730', 2, 13), ('MSI NVIDIA', 'GeForce GT 730', 2, 14), ('MSI NVIDIA', 'GeForce GT 730', 2, 15),
('MSI NVIDIA', 'GeForce GT 730', 2, 16), ('MSI NVIDIA', 'GeForce GT 730', 2, 17), ('MSI NVIDIA', 'GeForce GT 730', 2, 18),
('MSI NVIDIA', 'GeForce GT 730', 2, 19), ('MSI NVIDIA', 'GeForce GT 730', 2, 20);
#HDD
insert into detail (manufacturer, model, detail_type, equipment) values
('WD', '500GB WD5000AZLX', 6, 1), ('WD', '500GB WD5000AZLX', 6, 2), ('WD', '500GB WD5000AZLX', 6, 3),
('WD', '500GB WD5000AZLX', 6, 4), ('WD', '500GB WD5000AZLX', 6, 5), ('WD', '500GB WD5000AZLX', 6, 6),
('WD', '500GB WD5000AZLX', 6, 7), ('WD', '500GB WD5000AZLX', 6, 8), ('WD', '500GB WD5000AZLX', 6, 9),
('WD', '500GB WD5000AZLX', 6, 10), ('WD', '500GB WD5000AZLX', 6, 11), ('WD', '500GB WD5000AZLX', 6, 12),
('WD', '500GB WD5000AZLX', 6, 13), ('WD', '500GB WD5000AZLX', 6, 14), ('WD', '500GB WD5000AZLX', 6, 15),
('WD', '500GB WD5000AZLX', 6, 16), ('WD', '500GB WD5000AZLX', 6, 17), ('WD', '500GB WD5000AZLX', 6, 18),
('WD', '500GB WD5000AZLX', 6, 19), ('WD', '500GB WD5000AZLX', 6, 20);
#Блок питания
insert into detail (manufacturer, model, detail_type, equipment) values
('Aerocool', 'VX PLUS 700', 8, 1), ('Aerocool', 'VX PLUS 700', 8, 2), ('Aerocool', 'VX PLUS 700', 8, 3),
('Aerocool', 'VX PLUS 700', 8, 4), ('Aerocool', 'VX PLUS 700', 8, 5), ('Aerocool', 'VX PLUS 700', 8, 6),
('Aerocool', 'VX PLUS 700', 8, 7), ('Aerocool', 'VX PLUS 700', 8, 8), ('Aerocool', 'VX PLUS 700', 8, 9),
('Aerocool', 'VX PLUS 700', 8, 10), ('Aerocool', 'VX PLUS 700', 8, 11), ('Aerocool', 'VX PLUS 700', 8, 12),
('Aerocool', 'VX PLUS 700', 8, 13), ('Aerocool', 'VX PLUS 700', 8, 14), ('Aerocool', 'VX PLUS 700', 8, 15),
('Aerocool', 'VX PLUS 700', 8, 16), ('Aerocool', 'VX PLUS 700', 8, 17), ('Aerocool', 'VX PLUS 700', 8, 18),
('Aerocool', 'VX PLUS 700', 8, 19), ('Aerocool', 'VX PLUS 700', 8, 20);
select * from detail;