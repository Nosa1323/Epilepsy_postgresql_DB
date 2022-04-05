create table demo_schema.gfap (
	id SERIAL PRIMARY KEY, 
    volume DECIMAL NOT NULL,
    surface_area DECIMAL NOT NULL,
    animal_num INT NOT NULL,
    exp_group VARCHAR(10) NOT NULL,
    cell_num INT NOT NULL,
	protein VARCHAR(10) NOT NULL
	);
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
create table demo_schema.info (
	id SERIAL PRIMARY KEY, 
    animal_num INT NOT NULL,
    exp_group VARCHAR(10) NOT NULL,
    cell_num INT NOT NULL,
	protein VARCHAR(10) NOT NULL,
	FOREIGN KEY (id) REFERENCES gfap(id),
	FOREIGN KEY (id) REFERENCES gs(id),
	FOREIGN KEY (id) REFERENCES glt(id),
	FOREIGN KEY (id) REFERENCES s100b(id),
	FOREIGN KEY (id) REFERENCES cx43(id)
);


drop table gs;
drop table cx43;
drop table info;
drop table glt;
drop table s100b;
drop table gfap;

select * from info