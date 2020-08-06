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
INSERT INTO beerproduct(beer_name, beer_description, abv, beer_type) VALUES ('BUD','SOME BEER', '5', 'MALT');
INSERT INTO beerproduct(beer_name, beer_description, abv, beer_type) VALUES ('LightBeer','very light beer', '1.0', 'beer');

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='LightBeer'));


INSERT INTO users(username, password_hash,role) VALUES ('somebrewer','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');



COMMIT TRANSACTION;

--INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES(1,5);

SELECT brewery.name as Brewery_Name, beer_name, beer_description
FROM brewery
INNER JOIN  brewery_beerproduct ON brewery.brewery_id = brewery_beerproduct.brewery_id
INNER JOIN beerproduct ON brewery_beerproduct.beer_id = beerproduct.beer_id;

--ROLLBACK;

<-- These are the fake, dummy breweries for the database -->
COMMIT TRANSACTION;

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Humble Monk Brewing Co', 'msmith', '1641 Blue Rock St', 'Cincinnati', 'OH', 45223, '(513) 510-4615', 'Pet Friendly', 'Mon-Sun', '4:00pm - 11:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Fibonacci Brewing Company', 'tlewis', '1445 Compton Rd', 'Cincinnati', 'OH', 45231, '(513) 832-1422', 'A nanobrewery that produces high quality craft beers in a laid back, casual environment.', 'Mon-Sun', '6:00pm - 11:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Swine City Brewing', 'mglass', '4614 Industry Dr', 'Fairfield', 'OH', 45014, '(513) 201-7070', 'We prouldly self-distribute our beer.', 'Mon-Sun', '3:00pm - 12:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Brink Brewing Company', 'jbedinghaus', '5905 Hamilton Ave', 'Cincinnati', 'OH', 45224, '(513) 882-3334', 'Good beer is about the people, the brewing, and the experience.', 'Mon-Sun', '1:00pm - 10:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Listerman Brewing Company', 'nvorhis', '1621 Dana Ave', 'Cincinnati', 'OH', 45207, '(513) 731-1130', 'Enduring microbrewery with handcrafted bottled ales, a growler station & a homebrew supply store.', 'Mon-Sun', '5:00pm - 11:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Grainworks Brewing Company', 'mdunhill', '7790 Service Center Dr', 'West Chester', 'OH', 45069, '(513) 480-2337', 'It is in the grains.', 'Mon-Sun', '3:00pm - 12:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Urban Artifact', 'pfarmer', '1660 Blue Rock St', 'Cincinnati', 'OH', 45223, '(513) 542-4222', 'We moved into an historic church and opened the doors with our first beers and first music shows in April 2015.', 'Mon-Sun', '4:00pm - 10:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Fretboard Brewing Company', 'bday', '5800 Creek Rd', 'Cincinnati', 'OH', 45242, '(513) 914-4677', 'At Fretboard we aspire to create something that inspires and excites.', 'Mon-Sun', '4:00pm - 11:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('Little Miami Brewing Company', 'dkennedy', '208 Mill St', 'Milford', 'OH', 45150, '(513) 713-1121', 'Dan & Joe had a dream. They wanted to open a Craft Brewery in Cincinnati.', 'Mon-Sun', '2:00pm - 11:00pm');

INSERT INTO brewery(name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation) 
VALUES ('DogBerry Brewing', 'sjenkins', '9964 Crescent Park Dr', 'West Chester', 'OH', 45069, '(513) 847-8208', 'You should not have to live without delicious beer. Place an order, we’ll can it for you fresh from the tap.', 'Mon-Sun', '4:00pm - 12:00pm');

