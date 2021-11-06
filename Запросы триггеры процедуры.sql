SELECT Num, fio as 'Responsible' FROM room r, employee e
WHERE r.responsible = e.id;

SELECT et.type_name AS 'Equipment type', (SELECT count(*) AS 'Count' FROM equipment e
WHERE et.id = e.equipment_type) AS 'Count'
FROM equipment_type et;

SELECT Room, fio AS 'Name', dt_start AS 'Start', dt_end AS 'End' FROM exploitation e
INNER JOIN employee em ON e.responsible = em.id
ORDER BY dt_start;

delimiter //
SET @t_name = 'Монитор';
SELECT num FROM room WHERE num NOT IN (
SELECT DISTINCT room FROM equipment e
INNER JOIN equipment_type et ON et.id = e.equipment_type
WHERE e.equipment_type = (SELECT et.id FROM equipment_type et WHERE et.type_name = @t_name)); //
delimiter ;

delimiter //
SET @classroom = 122, @dt = '2021-10-04';
SELECT DISTINCT em.id, em.fio FROM employee em
INNER JOIN exploitation ex ON ex.responsible = em.id
WHERE ex.room = @classroom AND cast(ex.dt_start AS DATE) = @dt; //
delimiter ;

delimiter //
CREATE TRIGGER Warehouse_description_warning
BEFORE INSERT ON warehouse FOR EACH ROW
BEGIN
if new.descr is null then
SET new.descr = 'ПРЕДУПРЕЖДЕНИЕ: необходимо добавить описание склада
 во избежание ошибок распределения оборудования.';
end if;
END //
delimiter ;

insert into warehouse () values ();
select * from warehouse;

delimiter //
CREATE TRIGGER Exploitation_dt_error
BEFORE UPDATE ON exploitation FOR EACH ROW
if new.dt_start > new.dt_end then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Время начала эксплуатации не может быть позже времени конца эксплуатации.';
end if; //
delimiter ;

update exploitation set dt_start = '2021-10-04 09:00:00' where id = 1;
select * from exploitation limit 1;

select d.equipment from detail d;

delimiter //
CREATE TRIGGER Detail_deletion_error
BEFORE DELETE ON Detail FOR EACH ROW
if old.equipment is not null then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Сначала деталь необходимо изъять из оборудования или воспользоваться процедурой Detail_dispose(detail_id).';
end if; //
delimiter ;

insert into detail (detail_type, equipment) values (2, 1);
delete from detail where id = 2;
select * from detail;

delimiter //
CREATE PROCEDURE Count_equipment_in_room (in roomNum int, in eq_type int, out amount int)
BEGIN
select count(e.inventory_num) into amount from equipment e
inner join equipment_type et on et.id = e.equipment_type
where et.id = eq_type and e.room = roomNum;
END; //
delimiter ;

call Count_equipment_in_room(123, 1, @amount);
select @amount;

delimiter //
CREATE PROCEDURE Detail_dispose (in detail_id int)
BEGIN
declare e int;
select equipment into e from detail where id = detail_id;
if e is null then
	delete from detail where id = detail_id;
else
	update detail set equipment = null;
    delete from detail where id = detail_id;
end if;
END; //
delimiter ;

call detail_dispose(4);
select * from detail;

select * from equipment_type;
select * from equipment where equipment_type = 7;
select * from detail;
insert into equipment (inventory_num, room, equipment_type) values (101, 123, 7);
insert into detail (detail_type, equipment) values (1, 101);
insert into detail (detail_type, warehouse) values (1, 1);

delimiter //
CREATE PROCEDURE Change_cartridge (in printerID int, in newCartridgeID int)
BEGIN
if not exists (select * from detail where warehouse is not null and id = newCartridgeID) then
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Указанного чернильного картриджа нет на складе.';
end if;
call detail_dispose((select id from detail where equipment = printerID));
update detail set equipment = printerID, warehouse = null;
END; //
delimiter ;

call change_cartridge(101, 6);
select * from detail;