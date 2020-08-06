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
    VALUES ('7790 Service Center Dr', 'West Chester', 'OH', 45069, '513-480-2337');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('1660 Blue Rock St', 'Cincinnati', 'OH', 45223, '513-542-4222');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('5800 Creek Rd', 'Cincinnati', 'OH', 45242, '513-914-4677');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('208 Mill St', 'Milford', 'OH', 45150, '513-713-1121');

    INSERT INTO address(streetaddress, city, statetwochar, zip,phonenumber ) 
    VALUES ('9964 Crescent Park Dr', 'West Chester', 'OH', 45069, '513-847-8208');






INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Humble Monk Brewing Co', 1, 'Pet Friendly', 'Mon-Sun', '4 - 11 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Fibonacci Brewing Company', 1, 'A nanobrewery that produces high quality craft beers in a laid back, casual environment. ', 'Mon-Sun', '5 - 12 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Swine City Brewing', 1, 'We prouldly self-distribute our beer.', 'Mon-Sun', '3 - 12 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Brink Brewing Company', 1, 'Good beer is about the people, the brewing, and the experience.', 'Mon-Sun', '3 - 11 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Listerman Brewing Company', 1, 'Enduring microbrewery with handcrafted bottled ales, a growler station & a homebrew supply store.', 'Mon-Sun', '3 - 11 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Grainworks Brewing Company', 1, 'It is in the grains.', 'Mon-Sun', '3 - 11 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Urban Artifact', 1, 'We moved into an historic church and opened the doors with our first beers and first music shows in April 2015.', 'Mon-Sun', '3 - 11 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Fretboard Brewing Company', 1, 'At Fretboard we aspire to create something that inspires and excites.', 'Mon-Sun', '3 - 11 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('Little Miami Brewing Company', 1, 'Dan & Joe had a dream. They wanted to open a Craft Brewery in Cincinnati.', 'Mon-Sun', '3 - 11 pm');

INSERT INTO brewery(name, breweryaddressid, history, days_operations,  hours_operationid ) 
VALUES ('DogBerry Brewing', 1, 'You should not have to live without delicious beer. Place an order, we’ll can it for you fresh from the tap.', 'Mon-Sun', '3 - 11 pm');





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

SELECT *
FROM beerproduct


