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

DELETE FROM beerproduct
WHERE beer_id > 0;

DROP TABLE beerproduct;

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rhinegeist Truth IPA','Intensely hopped, and all those hops give peach, mango and passion fruit notes.', '7.2', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\001truth.jpeg');

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


INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='DogBerry Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Listermann Triple Digit'));

SELECT *
FROM beerproduct;

DELETE FROM beerproduct
WHERE beer_id = 28;

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Miss Patterson', 'This balanced Belgian ale contains an elegant mixture of spices to compliment the present malty sweetness.', '5.9', 'Belgian Blonde', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\088BircusLudlow.jpg');

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Bircus Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='The Breaded Lady'));


UPDATE beerproduct
SET beer_name = 'Ludlow'
WHERE beer_id = 29;


INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Moerlein OTR Ale','A generous amount of hops for stability, and a full malt character for balance makes for a crisp ale.', '5.8', 'Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\008OTR.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Hofbrahaus Hofbrau Dunkel','The archetype of a Munich beer, with a roasted hoppy taste and subtle malty finish.', '5.5', 'Dunkel','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\009HofbrauDunkel.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Mt. Carmel Amber Ale','Deep amber in color, entering with an aroma of fresh hops, coupled with a smooth flavorful body, balancing a complex hop finish.', '6', 'Amber Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\010MtCarmel-Amber.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Rivertown Roebling Porter','Brings together coffee, vanilla beans and raw, organic turbinado sugar into a big, rich, chocolate, espresso infused brownie of a beer.', '7.8', 'Porter','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\011Roebling.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Fifty West IPA','Our original IPA, blends the best of both Coasts. Tropical meets dank.', '6.8', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\012Fifty-West.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Eight Ball Prodigal','Enough malt to balance the massive amount of dry hops we introduce after fermentation. This lends piney, citrus, floral, and even grassy notes.', '6.5', 'Pale Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\013EightBall.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Blank Slate: Fork In the Road','Generous amounts of Citra and Centennial hops remind you that it is an India style beer.', '6.8', 'Amber Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\014ForkInTheRoad.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Great Crescent Coconut Porter','Brewed as a traditional English Style Porter. Organic Coconut is added during the brewing process to give this beer a nutty flavor and a little touch of sweetness.', '5.6', 'Porter','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\015CoconutPorter.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Cellar Dweller Copperhead','Fresh floral aromas and spice follow to a burst of citrus with a clean crisp finish on the palate.', '5.8', 'Pale Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\016cellarDweller.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Bad Tom Smith','A medium bodied ale with rich reddish-brown color, a fruity aroma, with an essence of toasted malt combined with candied nuts and a light caramel flavor,', '6', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\017BadTom.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Old Firehouse Probie','A perfectly robust ale with chocolate/coffee notes and firm hop bitterness.', '6.5', 'Porter','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\018Probie.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Geo. Wiedemann','Head is two fingers thick, with webbed lacing and a medium golden body, smells like rich, roasted malts and lighter floral hops.', '5', 'Pilsner','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\019Wiedemann.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Tap & Screw Dr Kool','Overtones of grapefruit, passionfruit and gooseberry; hopped four times though -- to add more intense flavor without bitterness.', '6.8', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\020tapandscrew.png');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Dogberry Brewing Wildfire','Crisp malt bodies IPA with bright hop notes brewed with peppercorn and coriander.', '6.7', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\021dogberry.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (FALSE, 'Listermann Triple Digit','Sweet with hazelnut turned way up. Very sneaky 10%. Leaves a slight bitter aftertaste but enjoyable overall.', '10', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\022listermann.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Listermann Triple Digit','Sweet with hazelnut turned way up. Very sneaky 10%. Leaves a slight bitter aftertaste but enjoyable overall.', '10', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\022listermann.jpg');


INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Truth IPA','Intensely hopped, and all those hops give peach, mango and passion fruit notes.', '7.2', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\090RhinTruth.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Cougar','It has a brilliant malt character, balanced yet dry with crystal and bravo hops.', '4.8', 'Golden Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\091RhinCougar.png');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Cheetah','It has a brilliant malt character, balanced yet dry with crystal and bravo hops.', '4.8', 'Lager','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\092RhinCheetah.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Knowledge','It has a brilliant malt character, balanced yet dry with crystal and bravo hops.', '4.8', 'Golden Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\093RhinKnowledge.jpg');


INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Psychopathy IPA','Blend of citrus, bright, and floral aromas; citrus flavors follow a smooth bitterness.', '6.9', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\094MadPyschopathy.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Happy Amber','This dry-hopped ale combines caramel and biscuit flavors, with a fine balance of hops and malts.', '6', 'Amber Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\095MadHappyA.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Gnarly Brown','Malts bring hints of brown sugar and vanilla; roasted coffee malt flavors obscure lines between brown ale and porter.', '7', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\096MadGnarly.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Lift','A crisp refreshing beer with a hint of orange will lift your spirits high.', '4.7', 'Kolsch','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\097MadLift.jpg');


INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rapture','A well balanced belgian style imperial with chocolatey notes.', '9.7', 'Stout','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\030HMRapture.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Abbey','A bright belgian forward with subtle notes of banana and clove esters and a mild hoppy finish.', '7.4', 'Red Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\031HMAbbey.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Haze Goggles','A New England style IPA.', '6.9', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\032HMHazeGoggles.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Bobs Your Uncle','A fully body classic english mild with notes of carmel and roast but sessional and easy on the palet.', '4.4', 'English Mild Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\033HMBobsYourUncle.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Devoted','A Trappist style beer with rich malty flavor, a copper color, and dark fruit notes', '7', 'Belgian Dubbel','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\034HMDevoted.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Tollhouse','Black color with moderate bitterness. Strong roasted coffee flavor and aroma with hints of chocolate.', '7.9', 'Stout','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\035FibTollhouse.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Oberhausen','Very pale color with medium bitterness. Somewhat vinous (grape-like) with a dry finish.', '5.6', 'Kolsch','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\037FibOberhausen.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Hoy Tripel','Bright gold color with little bitterness. A big, dense, creamy head with a full mouthfeel. Slightly fruity with a sweet finish.', '8.9', 'Belgian Tripel','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\038FibHoyTripel.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'The Noid','Irish red ale with honey.', '5.6', 'Red Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\039FibTheNoid.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'This is the New Stuff', 'A hazy-looking New England style IPA.', '7.3', 'IPA','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\040SCBThisITNS.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Girl Got Reasons', 'Sweet, salty, tart. A great Gose for any sour fan.', '3.7', 'Sour Gose','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\041SCBGirlGotReasons.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Good Enough For Me', 'Notes of cinnamon and nutmeg, bring this raisin soaked Amber together.', '5', 'Red Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\042SCBGoodEnough.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Raised On Promises', 'Straight forward, middle of the road Blonde. Nothing fancy and that is how we like it.', '4.7', 'Blonde Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\043SCBRaised.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'We Been Dancin', 'With notes of caramel and honey this malt forward Brown Ale will have you dancin.', '5', 'Brown Ale','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\044SCBWeBeenDancin.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Moozie', 'It is a rich, milk stout. Like a chocolate milkshake without the straw.', '6.2', 'Stout','C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\045BBMoozie.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Hold the Reins', 'Full flavored, moderate sweetness, a bit nutty with a touch of caramel. Chocolate and roast notes give way to a dry finish.', '4.7', 'English Mild Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\046BBHoldTR.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Afterglow NE IPA', 'It is bursting with citrusy hop flavors and has a tropical, citrus, and pine aroma.', '6.3', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\047BBAfterglow.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Debbie Jean Blonde', 'Pale malts are used to craft a beer with delicate bread and biscuit notes. Only the slightest hint of hops and negligible bitterness.', '4.6', 'Blonde Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\048BBDebbieJB.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'J-Boy IPA', 'An American style IPA.', '7.2', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\049BBJ_Boy.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Triple Digit Chickow', 'Hazelnut Double Brown Ale.', '10', 'Brown Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\050ListTDChickow.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Nutcase Peanut Butter Porter', 'A nice smooth porter with a back end of peanut butter happiness.', '6.8', 'Porter', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\051ListNutcase.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Team Fiona', 'It is a very pleasant, quaffable tropical and citrus forward IPA with little to no bitterness.', '7.2', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\052ListTeamFiona.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Shamrock Shake', 'Irish Cream Stout: Please note there is no mint in this beer.', '5.5', 'Stout', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\053ListShamrock.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Friar Bacon Smoked Bock', 'New England style IPA with Citra hops.', '8', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\054ListFriarBSB.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Poundsign Nofilter', 'Tropical fruit and haze for days, has a mango, pineapple and tropical fruit flavor and aroma with a smooth and juicy finish.', '7.2', 'IPA New England', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\055GWPoundSign.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'My Blue Heaven', 'Malty backbone English style ale with just enough blueberry to refresh the palate - not your typical fruit beer.', '5.3', 'Fruit Beer', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\056GWMBHeaven.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rusty Bumper', 'Smooth drinking brown ale with hints of coffee and chocolate.', '5.7', 'Brown Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\057GWRustyB.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rebel Yell', 'Made with pilsner malt and Mosaic this dry hopped beauty is refreshing and finishes dry.', '5.7', 'Pale Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\058GWRebelYell.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Brewers Breakfast', 'Imperial Stout made with oatmeal, dark chocolate, and coffee from local roaster Resurgam.', '8', 'Stout', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\059GWBrewersBr.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Finn', 'A Tart Pale Ale, which is hopped like a citrusy American Pale Ale wit a crisp tartness.Citrus & apricot hop flavors lead the charge.', '5.3', 'IPA Sour', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\060UAFinn.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'The Gadget', 'A Midwest Fruit Tart Ale with 1,280 lbs of blackberries, 1,280 lbs of raspberries & 30 g of vanilla beans per 30 BBL batch.', '7.9', 'Sour Fruited', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\061UATheGadget.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Pinwheel', 'Gose brewed with 500 lbs of oranges, 22 lbs of sea salt, 1 lb of coriander & 30 g of vanilla beans per 30 BBL batch.', '4.5', 'Sour Fruited Gose', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\062UAPinwheel.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Landline', 'A Midwest Fruit Tart Ale with 2,000 lbs of Banana and 1,000 lbs of Red Raspberry per 30 bbl batch.', '7.7', 'Fruit Beer', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\064UALandline.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Reba', 'Light, effervescent bubbles come to mind when you sip on this beauty but not light on taste.', '5.3', 'Blonde Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\065FretReba.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Trey', 'Truly a unique and rich amber ale that is supplied with earthy notes of the Ahtanum hop.', '5.7', 'Red Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\066FretTrey.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Fugee', 'A great brown ale.', '6.4', 'Brown Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\067FretFugee.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Vlad', 'Vlad is a traditional German Pilsner.', '5.3', 'Pilsner', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\068FretVlad.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Juicy Improv', 'An American IPA.', '7.1', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\069FretJuicyImpr.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Earth Cookie', 'Nut Brown Strong Ale with deep mahogany color with just a hint of chocolate and coffee.', '6', 'Brown Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\070LMBEarthCookie.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Grateful IPA', 'A fruity IPA brewed with a famous San Francisco brewery yeast strain. Also a large amount of American hops (cascade, centennial, and chinook) for a piney, citrusy hit of goodness.', '6', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\071LMBGrateful.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Pterodactyl', 'Classic Bavarian Wheat beer. Notes of banana and clove from the process of fermentation.', '5.4', 'Hefeweizen', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\072LMBPterodactyl.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Misty Mountain Hop IPA', 'Hoppy Piney, Citra.', '7', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\073LMBMMHop.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Buzz Saw', 'Copper colored and a blend of classic American hops that celebrates the style. Easy drinking with just enough hop.', '6.9', 'Pale Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\074LMBBuzzsaw.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Wildfire', 'Crisp malt bodies IPA with bright hop notes brewed with peppercorn and coriander.', '6.7', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\075DBWildfire.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Brays On Target', 'Crisp roast, rich malt body with a hint of coffee and wood.', '5.7', 'Brown Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\076DBBrays.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Nats Nightcap', 'Dark and dry American Stout with a medium body, sharp roast and light smokey note.', '5.8', 'Stout', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\077DBNatsNC.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Blonde', 'Light color, mild malt depth with a touch of floral hop tones.', '5.7', 'Blond Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\078DBBlonde.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Supernova', 'Double Chocolate Stout', '8.4', 'Stout', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\079DBSupernova.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Storm', 'A medium body with a creamy palate feel. The aroma is a balance between subtle corn and malt-like notes.', '4.8', 'Cream Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\080BraxStorm.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Tropic Flare', 'The tropical punch aroma of ripe mango, pineapple and grapefruit will hit your palette.', '6.8', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\081BraxTropicF.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Dead Blow', 'Dead Blow is a dry, roasty, fruity, full bodied, smooth stout, that is lighter on bitterness.', '7.2', 'Stout', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\082BraxDeadBlow.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Blown Gasket', 'This robust porter is a darker offering with a noticeably roasty aroma.', '7.5', 'Porter', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\083BraxBlownG.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Haven', 'A medium bodied, full flavored and easy drinking unfiltered wheat beer.', '5.2', 'Hefeweizen', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\084BraxHaven.png');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Showman', 'A neutral house yeast keeps the background soft to ensure this beer stays hop forward from start to finish.', '6.8', 'IPA', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\085BircusShowman.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Lagoon', 'Six kinds of grain bring out a complex character in this Scotch Ale.', '8', 'Scotch Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\086BircusLagoon.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'The Breaded Lady', 'To this light, easy drinking beer, German Mandarina hops add a subtle orange aroma.', '4.8', 'Kolsch', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\087BircusBreaded.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Ludlow', 'An assertive traditional American pale that has a few non-traditional ingredients.', '5', 'Pale Ale', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\088BircusLudlow.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Miss Patterson', 'This balanced Belgian ale contains an elegant mixture of spices to compliment the present malty sweetness.', '5.9', 'Belgian Blonde', 'C:\Users\Student\workspace\plorenz-java\brewery-finder-capstone-java\backend-java\database\beer_photos\089BircusMissP.jpg');


SELECT *
FROM beerproduct
WHERE beer_name = 'Earth Daisy';

SELECT * 
FROM brewery
WHERE name = 'Urban Artifact';

---took these out of schema because error not null constraint violation





