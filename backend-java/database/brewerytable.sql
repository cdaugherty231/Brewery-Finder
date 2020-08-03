
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
    
    SELECT *
    FROM brewery;

     SELECT *
    FROM address;