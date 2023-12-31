DROP TABLE IF EXISTS soft;
CREATE TABLE soft (id integer, sname varchar(50), ver varchar(50), quant integer);
DROP TABLE IF EXISTS employees; 
CREATE TABLE employees (id integer, lname varchar(50), fname varchar(50), mname varchar(50));
DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (id integer, num integer, emp_id integer);
DROP TABLE IF EXISTS pcs;
CREATE TABLE pcs (id integer, room_id integer, note varchar(100), ip_addr varchar(50), mac_addr varchar(17));
DROP TABLE IF EXISTS installs;
CREATE TABLE installs (pc_id integer, soft_id integer);
