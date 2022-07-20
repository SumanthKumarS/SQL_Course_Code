create database test;
use test;
create table address(
	id int,
    house_number int,
    city varchar(20),
    postcode varchar(7)
);
create table people(
	id int,
    first_name varchar(30),
    last_name varchar(30),
    address_id int
);
create table pets(
	id int,
    name varchar(30),
    species varchar(30),
    owner_id int
);
show tables;
describe address;
ALTER TABLE address ADD PRIMARY KEY (id);
-- ALTER TABLE address DROP PRIMARY KEY;

describe people;
ALTER TABLE people ADD PRIMARY KEY (id);
-- ALTER TABLE people DROP PRIMARY KEY;

ALTER TABLE people ADD 
CONSTRAINT fk_people FOREIGN KEY (address_id) REFERENCES address(id);
describe people;

ALTER TABLE people DROP FOREIGN KEY fk_people;
describe people;

ALTER TABLE pets ADD CONSTRAINT u_species UNIQUE(species);
describe pets;

ALTER TABLE pets DROP INDEX u_species;
describe pets;

ALTER TABLE pets CHANGE `owner_id` `own_name_id` INT;
describe pets;

ALTER TABLE address MODIFY postcode INT;
describe address;

ALTER TABLE address MODIFY postcode varchar(7);
describe address;