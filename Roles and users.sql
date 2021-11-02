use equipment;
CREATE ROLE 'Teacher'@'localhost';
show grants for 'Anakonda'@'localhost';
GRANT SELECT ON equipment.equipment TO 'Teacher'@'localhost';
GRANT SELECT ON equipment.detail TO 'Teacher'@'localhost';
GRANT SELECT ON equipment.detail_type TO 'Teacher'@'localhost';
GRANT SELECT ON equipment.employee TO 'Teacher'@'localhost';
GRANT SELECT ON equipment.equipment_type TO 'Teacher'@'localhost';
GRANT SELECT ON equipment.room TO 'Teacher'@'localhost';
GRANT SELECT ON equipment.exploitation TO 'Teacher'@'localhost';

#select * from mysql.default_roles;
#select current_role()

CREATE USER 'Anakonda'@'localhost' IDENTIFIED BY 'Anakonda';
GRANT 'Teacher'@'localhost' TO 'Anakonda'@'localhost';
SET DEFAULT ROLE 'Teacher'@'localhost' TO 'Anakonda'@'localhost';
flush privileges;