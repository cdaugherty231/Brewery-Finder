
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

     SELECT *
    FROM address; */

    SELECT *
    FROM address

    Begin Transaction
    INSERT INTO brewery(breweryid, name, breweryaddressid, history, days_operations,  hours_operationid)
    VALUES (12,'Humble Monk Brewing Co', 11, 'Pet Friendly', 'Wed - Sun', '4 - 11 pm')

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('1641 Blue Rock St', 'Cincinnati', 'OH', 45223, '513-510-4615');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('1445 Compton Rd', 'Cincinnati', 'OH', 45231, '513-832-1422');
    
    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('4614 Industry Dr', 'Fairfield', 'OH', 45014, '513-201-7070');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('5905 Hamilton Ave', 'Cincinnati', 'OH', 45224, '513-882-3334');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('1621 Dana Ave', 'Cincinnati', 'OH', 45207, '513-731-1130');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('1621 Dana Ave', 'Cincinnati', 'OH', 45207, '513-731-1130');

    