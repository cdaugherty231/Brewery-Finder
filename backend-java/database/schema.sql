BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
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



    CREATE TABLE address (
     breweryaddressid SERIAL,
     streetaddress VARCHAR (99 ),
     city VARCHAR (99 ),
     statetwochar VARCHAR (99), 
     zip int,
     phonenumber VARCHAR (99 ),
     constraint pk_breweryaddressid primary key (breweryaddressid)
     
    );

CREATE TABLE brewery (
     breweryid SERIAL,
     name VARCHAR (99 ),
     breweryaddressid INT,
     history VARCHAR (999), 
     days_operations VARCHAR(99),
     hours_operationid VARCHAR(99),
     constraint pk_breweryid primary key (breweryid),
     constraint fk_breweryaddressid foreign key (breweryaddressid) references address (breweryaddressid)
     /* IMAGE Database Brewery*/
    );

    /*DROP TABLE brewery;

    DROP TABLE address; */

    
INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) VALUES ('27 W', 'Covington', 'KY', 41011, '859-261-5600');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) VALUES ('Braxton', 1, 'Two Story Brewery in the heart of Covington', 'Mon-Sun', '10:00am - 12:00pm');

COMMIT TRANSACTION;
