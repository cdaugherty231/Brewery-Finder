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

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'MadTree Psychopathy IPA','Blend of citrus, bright, and floral aromas; citrus flavors follow a smooth bitterness.', '6.9', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\002psychopathy.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'MadTree Happy Amber','This dry-hopped ale combines caramel and biscuit flavors, with a fine balance of hops and malts.', '6', 'Amber Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\003happyamber.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rhinegeist Cougar','It has a brilliant malt character, balanced yet dry with crystal and bravo hops.', '4.8', 'Golden Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\004Cougar.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'MadTree Gnarly Brown','Malts bring hints of brown sugar and vanilla; roasted coffee malt flavors obscure lines between brown ale and porter.', '7', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\006gnarlybrown.png');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'MadTree Lift','A crisp refreshing beer with a hint of orange will lift your spirits high.', '4.7', 'Kolsch','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\007Lift.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Moerlein OTR Ale','A generous amount of hops for stability, and a full malt character for balance makes for a crisp ale.', '5.8', 'Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\008OTR.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Hofbrahaus Hofbrau Dunkel','The archetype of a Munich beer, with a roasted hoppy taste and subtle malty finish.', '5.5', 'Dunkel','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\009HofbrauDunkel.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Mt. Carmel Amber Ale','Deep amber in color, entering with an aroma of fresh hops, coupled with a smooth flavorful body, balancing a complex hop finish.', '6', 'Amber Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\010MtCarmel-Amber.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rivertown Roebling Porter','Brings together coffee, vanilla beans and raw, organic turbinado sugar into a big, rich, chocolate, espresso infused brownie of a beer.', '7.8', 'Porter','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\011Roebling.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Fifty West IPA','Our original IPA, blends the best of both Coasts. Tropical meets dank.', '6.8', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\012Fifty-West.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Eight Ball Prodigal','Enough malt to balance the massive amount of dry hops we introduce after fermentation. This lends piney, citrus, floral, and even grassy notes.', '6.5', 'Pale Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\013EightBall.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Blank Slate: Fork In the Road','Generous amounts of Citra and Centennial hops remind you that it is an India style beer.', '6.8', 'Amber Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\014ForkInTheRoad.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Great Crescent Coconut Porter','Brewed as a traditional English Style Porter. Organic Coconut is added during the brewing process to give this beer a nutty flavor and a little touch of sweetness.', '5.6', 'Porter','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\015CoconutPorter.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Cellar Dweller Copperhead','Fresh floral aromas and spice follow to a burst of citrus with a clean crisp finish on the palate.', '5.8', 'Pale Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\016cellarDweller.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Bad Tom Smith','A medium bodied ale with rich reddish-brown color, a fruity aroma, with an essence of toasted malt combined with candied nuts and a light caramel flavor,', '6', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\017BadTom.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Old Firehouse Probie','A perfectly robust ale with chocolate/coffee notes and firm hop bitterness.', '6.5', 'Porter','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\018Probie.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Geo. Wiedemann','Head is two fingers thick, with webbed lacing and a medium golden body, smells like rich, roasted malts and lighter floral hops.', '5', 'Pilsner','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\019Wiedemann.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Tap & Screw Dr Kool','Overtones of grapefruit, passionfruit and gooseberry; hopped four times though -- to add more intense flavor without bitterness.', '6.8', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\020tapandscrew.png');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Dogberry Brewing Wildfire','Crisp malt bodies IPA with bright hop notes brewed with peppercorn and coriander.', '6.7', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\021dogberry.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Listermann Triple Digit','Sweet with hazelnut turned way up. Very sneaky 10%. Leaves a slight bitter aftertaste but enjoyable overall.', '10', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\022listermann.jpg');
