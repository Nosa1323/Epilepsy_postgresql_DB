drop table info;
drop table gfap;

create table demo_schema.info (
	id SERIAL PRIMARY KEY, 
    animal_num INT UNIQUE,
    exp_group VARCHAR(10) UNIQUE,
    cell_num INT UNIQUE,
	protein VARCHAR(10) UNIQUE
);

create table demo_schema.gfap (
	id SERIAL PRIMARY KEY, 
	animal_num INT NOT NULL REFERENCES info (animal_num),
    exp_group VARCHAR(10) NOT NULL REFERENCES info (exp_group),
    cell_num INT NOT NULL REFERENCES info (cell_num),
	protein VARCHAR(10) NOT NULL REFERENCES info (protein),
    volume DECIMAL NOT NULL,
    surface_area DECIMAL NOT NULL,
	FOREIGN KEY (id) 
	REFERENCES info(id) );
	
	
create table demo_schema.gs (
	id SERIAL PRIMARY KEY, 
    volume DECIMAL NOT NULL,
    surface_area DECIMAL NOT NULL,
    animal_num INT NOT NULL,
    exp_group VARCHAR(10) NOT NULL,
    cell_num INT NOT NULL,
	protein VARCHAR(10) NOT NULL
	);

create table demo_schema.glt (
	id SERIAL PRIMARY KEY, 
    volume DECIMAL NOT NULL,
    surface_area DECIMAL NOT NULL,
    animal_num INT NOT NULL,
    exp_group VARCHAR(10) NOT NULL,
    cell_num INT NOT NULL,
	protein VARCHAR(10) NOT NULL
	);

create table demo_schema.s100b (
	id SERIAL PRIMARY KEY, 
    volume DECIMAL NOT NULL,
    surface_area DECIMAL NOT NULL,
    animal_num INT NOT NULL,
    exp_group VARCHAR(10) NOT NULL,
    cell_num INT NOT NULL,
	protein VARCHAR(10) NOT NULL
	);
	
create table demo_schema.cx43 (
	id SERIAL PRIMARY KEY, 
    volume DECIMAL NOT NULL,
    surface_area DECIMAL NOT NULL,
    animal_num INT NOT NULL,
    exp_group VARCHAR(10) NOT NULL,
    cell_num INT NOT NULL,
	protein VARCHAR(10) NOT NULL
	);


drop table info;
drop table gfap;
drop table gs;
drop table cx43;
drop table glt;
drop table s100b;


select * from info