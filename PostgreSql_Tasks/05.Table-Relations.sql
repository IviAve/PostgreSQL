
CREATE TABLE rooms(
	id SERIAL PRIMARY KEY,
	occupation VARCHAR(20) NOT NULL,
	beds_count int NOT NULL
);

CREATE TABLE vehicles(
	id SERIAL PRIMARY KEY NOT NULL,
	driver_id int NOT NULL,
	vehicle_type varchar(30) NOT NULL,
	passengers int NOT NULL
);

CREATE TABLE campers(
	id SERIAL PRIMARY KEY,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	age int NOT NULL,
	room int,
	vehicle_id int,
	CONSTRAINT fk_room_id FOREIGN KEY(room) REFERENCES rooms(id),
  	CONSTRAINT fk_vehicle_id FOREIGN KEY(vehicle_id) REFERENCES vehicles(id) on delete cascade
);

CREATE TABLE routes(
	id SERIAL PRIMARY KEY,
	start_point varchar(30) NOT NULL,
	end_point varchar(30) NOT NULL,
	leader_id int NOT NULL,
	route_time TIME NOT NULL,	
	CONSTRAINT fk_leader_id FOREIGN KEY(leader_id) REFERENCES campers(id)
);

insert into rooms(id,occupation,beds_count) values(101,'occupied',3),
(102,'free',3),
(103,'free',3),
(104,'free',2),
(105,'free',2),
(201,'free',3),
(202,'free',3),
(203,'free',2),
(204,'free',3),
(205,'free',3),
(301,'free',2),
(302,'free',2),
(303,'free',2),
(304,'free',3),
(305,'free',3);

insert into campers(first_name, last_name, age,room) values('Simo', 'Sheytanov', 20,101),
('Roli', 'Dimitrova', 27,102),
('RoYaL', 'Yonkov', 25,301),
('Ivan', 'Ivanov', 28,301),
('Alisa', 'Terzieva', 25,102),
('Asya', 'Ivanova', 26,102),
('Dimitar', 'Verbov', 21,301),
('Iskren', 'Ivanov', 28,302),
('Bojo', 'Gevechanov', 28,302);

insert into vehicles(driver_id,vehicle_type,passengers) values
(1,'bus',20),
(2,'van',10),
(1,'van',10),
(4,'car',5),
(5,'car',5),
(6,'car',4),
(7,'car',3),
(8,'bus',3);

insert into routes(start_point,end_point,leader_id,route_time) values
('Hotel Malyovitsa', 'Malyovitsa Peak', 3, '02:00:00'),
('Hotel Malyovitsa', 'Malyovitsa Hut', 3, '00:40:00'),
('Ribni Ezera Hut', 'Rila Monastery', 3, '06:00:00'),
('Borovets', 'Musala Peak', 4, '03:30:00');


CREATE TABLE mountains(
    id SERIAL PRIMARY KEY,
    name varchar(50)
);

CREATE TABLE peaks(
    id SERIAL PRIMARY KEY,
    name varchar(50),
    mountain_id int,
    CONSTRAINT fk_peaks_mountains FOREIGN KEY (mountain_id)REFERENCES mountains(id)
);



SELECT
    v.driver_id,
    v.vehicle_type,
    concat(c.first_name, ' ', c.last_name) as driver_name
FROM vehicles as v
    join campers as c on c.id = v.driver_id

	
	
	SELECT
    r.start_point,
    r.end_point,
    r.leader_id,
    concat(c.first_name, ' ', c.last_name) as leader_name
FROM routes as r
    join campers as c ON r.leader_id = c.id


	
	
CREATE TABLE mountains(
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(50)
);

CREATE TABLE peaks(
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(50),
    mountain_id int,
    CONSTRAINT fk_mountain_id
        FOREIGN KEY (mountain_id)
            REFERENCES mountains(id)
                ON DELETE CASCADE
)
;







CREATE TABLE clients(
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
name VARCHAR(100)
);

CREATE TABLE employees(
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
first_name VARCHAR(30),
last_name VARCHAR(30)
);

CREATE TABLE projects(
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL
client_id INT REFERENCES clients(id),
project_lead_id INT REFERENCES employees(id)
)
