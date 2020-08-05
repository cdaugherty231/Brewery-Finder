BEGIN TRANSACTION;

DROP TABLE IF EXISTS brewery_beerproduct;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS brewery;
DROP TABLE IF EXISTS beerproduct;
DROP SEQUENCE IF EXISTS seq_user_id;

CREATE SEQUENCE seq_user_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;


CREATE TABLE users (
	user_id int DEFAULT nextval('seq_user_id'::regclass) NOT NULL,
	username varchar(50) NOT NULL,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

 
CREATE TABLE brewery (
     brewery_id SERIAL,
     name VARCHAR (99 ),
     brewer_username VARCHAR (99),
     address_street VARCHAR (99 ),
     address_city VARCHAR (99 ),
     address_state VARCHAR (99), 
     address_zip INT,
     phone_number VARCHAR (99 ),
     history VARCHAR (999), 
     days_operation VARCHAR(99),
     hours_operation VARCHAR(99),
     constraint pk_brewery_id primary key (brewery_id)
);

CREATE TABLE beerproduct(
    beer_id SERIAL,
    beer_name VARCHAR (99),
    beer_description VARCHAR (99),
    abv VARCHAR (99),
    beer_type VARCHAR (99),
    constraint pk_beerproduct PRIMARY KEY (beer_id)
);

CREATE TABLE brewery_beerproduct(
    brewery_id integer,
    beer_id integer,
    CONSTRAINT pk_brewery_beerproduct_brewery_id_beer_id PRIMARY KEY (brewery_id, beer_id)
);



ALTER TABLE brewery_beerproduct
ADD FOREIGN KEY(brewery_id)
REFERENCES brewery(brewery_id);

ALTER TABLE brewery_beerproduct
ADD FOREIGN KEY(beer_id)
REFERENCES beerproduct(beer_id);


INSERT INTO brewery(name, brewer_username, address_street , address_city, address_state,  address_zip, phone_number, history, days_operation, hours_operation) VALUES ('Braxton','somebrewer','27 W', 'Covington', 'KY', 41011, '859-261-5600', 'Two Story Brewery in the heart of Covington', 'Mon-Sun', '10:00am - 12:00pm');
INSERT INTO beerproduct(beer_id, beer_name, beer_description, abv, beer_type) VALUES (1,'Storm','Good beer - This golden cream ale', '4.8', 'This golden cream ale');



--ROLLBACK;

COMMIT TRANSACTION;

SELECT * FROM brewery;

SELECT * FROM beerproduct;

SELECT * FROM brewery_beerproduct;

