
 /*CREATE TABLE address (
     breweryaddressid SERIAL,
     streetaddress VARCHAR (99 ),
     city VARCHAR (99 ),
     statetwochar VARCHAR (99), 
     zip int,
     phonenumber VARCHAR (99 ),
     constraint pk_breweryaddressid primary key (breweryaddressid)
     
    );

CREATE TABLE brewery (
     brewery_id SERIAL,
     name VARCHAR (99 ),
     address_street_number INT,
     address_city VARCHAR (99 ),
     address_state VARCHAR (99), 
     address_zip INT,
     phone_number VARCHAR (99 ),
     history VARCHAR (999), 
     days_operation VARCHAR(99),
     hours_operation VARCHAR(99),
     constraint pk_brewery_id primary key (brewery_id),
     /*constraint fk_breweryaddressid foreign key (breweryaddressid) references address (breweryaddressid)
     /* IMAGE Database Brewery*/
    /*);

    /*DROP TABLE brewery;

      DROP TABLE address; */

    
/*INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) VALUES ('27 W', 'Covington', 'KY', 41011, '859-261-5600');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) VALUES ('Braxton', 1, 'Two Story Brewery in the heart of Covington', 'Mon-Sun', '10:00am - 12:00pm');
    
    SELECT *
    FROM brewery;