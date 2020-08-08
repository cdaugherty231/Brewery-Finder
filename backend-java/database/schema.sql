BEGIN TRANSACTION;

DROP TABLE IF EXISTS brewery_beerproduct;
DROP TABLE IF EXISTS beerproduct_beerreview;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS brewery;
DROP TABLE IF EXISTS beerproduct;
DROP TABLE IF EXISTS beerreview;

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
INSERT INTO users(username, password_hash,role) VALUES ('Cincy Brewer','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');

 
CREATE TABLE brewery (
     brewery_id SERIAL,
     isactive boolean,
     name VARCHAR (99) NOT NULL, --Modify to be not null, need Brewer & Admin to at least fill in the name of Brewery
     brewer_username VARCHAR (99) NOT NULL, --Modify to be not null, need Brewer & Admin to at least fill in the username of Brewer
     address_street VARCHAR (99 ),
     address_city VARCHAR (99 ),
     address_state VARCHAR (99), 
     address_zip INT,
     phone_number VARCHAR (99 ),
     history VARCHAR (999), 
     days_operation VARCHAR(99),
     hours_operation VARCHAR(99),
     brewery_image VARCHAR(1000), --NEW ADD
     constraint pk_brewery_id primary key (brewery_id)
);

CREATE TABLE beerproduct(
    beer_id SERIAL,
    isactive boolean,
    beer_name VARCHAR (99),
    beer_description VARCHAR (199),
    abv VARCHAR (99),
    beer_type VARCHAR (99),
    beer_image VARCHAR (1000), --NEW ADD
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




-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

--CREATING JOINING TABLES FOR 'BEER_ID/REVIEW_ID'
CREATE TABLE beerreview(
    review_id SERIAL,
    reviewer VARCHAR (99),
    beer_name VARCHAR(99),
    beer_rating float,
    beer_review VARCHAR (1000),
    constraint pk_beerreview PRIMARY KEY (review_id)
);

CREATE TABLE beerproduct_beerreview(
    beer_id integer,
    review_id integer,
    CONSTRAINT PK_beerproduct_beerreview_beer_id_review_id PRIMARY KEY (beer_id, review_id)
);

ALTER TABLE beerproduct_beerreview
ADD FOREIGN KEY(beer_id)
REFERENCES beerproduct(beer_id);

ALTER TABLE beerproduct_beerreview
ADD FOREIGN KEY(review_id)
REFERENCES beerreview(review_id);




----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---Input fake breweries into brewery table------------
INSERT INTO brewery(isactive, name, brewer_username, address_street , address_city, address_state,  address_zip, phone_number, history, days_operation, hours_operation, brewery_image) 
VALUES (TRUE, 'Braxton','Cincy Brewer','27 W', 'Covington', 'KY', 41011, '859-261-5600', 'Two Story Brewery in the heart of Covington', 'Mon-Sun', '10:00am - 12:00pm','https://images.squarespace-cdn.com/content/v1/56bc856f37013b1b46f58914/1575937608540-BOQK49AKM0U2PVVVS0OM/ke17ZwdGBToddI8pDm48kCvp9wUojcKRXNLZnuWdJbxZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIq7Wb5dtC4qoJ6CEJp3okJIUgQ1b_-LUh8rmXwLlAs0MKMshLAGzx4R3EDFOm1kBS/72189940_807006633050419_5757390238515200000_n.jpg');

INSERT INTO brewery(isactive,name, brewer_username, address_street , address_city, address_state,  address_zip, phone_number, history, days_operation, hours_operation, brewery_image) 
VALUES (TRUE,'Best Beer Co','USA Brewer','27 W', 'Covington', 'KY', 41011, '859-261-5600','Two Story Brewery in the heart of Covington', 'Mon-Sun', '10:00am - 12:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Humble Monk Brewing Co', 'msmith', '1641 Blue Rock St', 'Cincinnati', 'OH', 45223, '(513) 510-4615', 'Pet Friendly', 'Mon-Sun', '4:00pm - 11:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (FALSE,'Fibonacci Brewing Company', 'tlewis', '1445 Compton Rd', 'Cincinnati', 'OH', 45231, '(513) 832-1422', 'A nanobrewery that produces high quality craft beers in a laid back, casual environment.', 'Mon-Sun', '6:00pm - 11:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (FALSE,'Swine City Brewing', 'mglass', '4614 Industry Dr', 'Fairfield', 'OH', 45014, '(513) 201-7070', 'We prouldly self-distribute our beer.', 'Mon-Sun', '3:00pm - 12:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Brink Brewing Company', 'jbedinghaus', '5905 Hamilton Ave', 'Cincinnati', 'OH', 45224, '(513) 882-3334', 'Good beer is about the people, the brewing, and the experience.', 'Mon-Sun', '1:00pm - 10:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Listerman Brewing Company', 'nvorhis', '1621 Dana Ave', 'Cincinnati', 'OH', 45207, '(513) 731-1130', 'Enduring microbrewery with handcrafted bottled ales, a growler station & a homebrew supply store.', 'Mon-Sun', '5:00pm - 11:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Grainworks Brewing Company', 'mdunhill', '7790 Service Center Dr', 'West Chester', 'OH', 45069, '(513) 480-2337', 'It is in the grains.', 'Mon-Sun', '3:00pm - 12:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Urban Artifact', 'pfarmer', '1660 Blue Rock St', 'Cincinnati', 'OH', 45223, '(513) 542-4222', 'We moved into an historic church and opened the doors with our first beers and first music shows in April 2015.', 'Mon-Sun', '4:00pm - 10:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Fretboard Brewing Company', 'bday', '5800 Creek Rd', 'Cincinnati', 'OH', 45242, '(513) 914-4677', 'At Fretboard we aspire to create something that inspires and excites.', 'Mon-Sun', '4:00pm - 11:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Little Miami Brewing Company', 'dkennedy', '208 Mill St', 'Milford', 'OH', 45150, '(513) 713-1121', 'Dan & Joe had a dream. They wanted to open a Craft Brewery in Cincinnati.', 'Mon-Sun', '2:00pm - 11:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'DogBerry Brewing', 'sjenkins', '9964 Crescent Park Dr', 'West Chester', 'OH', 45069, '(513) 847-8208', 'You should not have to live without delicious beer. Place an order, we’ll can it for you fresh from the tap.', 'Mon-Sun', '4:00pm - 12:00pm','');

----------------------------------------------------------------------------------------------------------------------------------------------------------------

--For Brewer to add new beer into brewery
INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) VALUES (TRUE, 'Bud USA','AMERICAN BEER', '5.0', 'Lager','https://images.squarespace-cdn.com/content/v1/5c2d190d5ffd20fcfe3de667/1594250082106-B2OV6B6NLGXSS4UFFVYH/ke17ZwdGBToddI8pDm48kJKo3YTR7zgUvInmXMbZ6zZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0geeCvn1f36QDdcifB7yxGjTk-SMFplgtEhJ5kBshkhu5q5viBDDnY2i_eu2ZnquSA/NewBeers.DayBracey.TABLE.Summer2020');
INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) VALUES (TRUE, 'Light Years','low alcohol beer', '1.0', 'malt beer','https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80');
INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) VALUES (TRUE, 'Blue Sun','Europe beer', '5.0', 'dark beer','https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80');

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


----For Brewer to add new beer into brewery
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Light Years'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Listermann Triple Digit'));

----For Brewer to add new beer into brewery
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Best Beer Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Bud USA'));
----For Brewer to add new beer into brewery
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Best Beer Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Blue Sun'));
----For Brewer to add new beer into brewery
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Dogberry Brewing Wildfire'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='MadTree Psychopathy IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Rhinegeist Cougar'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Rhinegeist Cougar'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Mt. Carmel Amber Ale'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Eight Ball Prodigal'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='Eight Ball Prodigal'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='Great Crescent Coconut Porter'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='Old Firehouse Probie'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Old Firehouse Probie'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='MadTree Gnarly Brown'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Hofbrahaus Hofbrau Dunkel'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Hofbrahaus Hofbrau Dunkel'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='MadTree Happy Amber'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Fifty West IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Fifty West IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Blank Slate: Fork In the Road'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Cellar Dweller Copperhead'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Blank Slate: Fork In the Road'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Bad Tom Smith'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Tap & Screw Dr Kool'));


-------------------------------------------------------------------------------------------------------------------------------------------------------------
----For User to add rating/review for a beer under a brewery

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Salvador','Light Years', 2.0, 'This beer tastes like water');

INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Light Years'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Light Years'));

----For User to add rating/review for a beer under a brewery

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Patrick', 'Bud USA', 4.5, 'Very good beer!!!');

INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Bud USA'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Bud USA'));

----For User to add rating/review for a beer under a brewery

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Greyson','Blue Sun', 3.5, 'This beer got me drunk fast');

INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Blue Sun'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Blue Sun'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Connor','Listermann Triple Digit', 4.0, 'This beer is a good buzz');

INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Listermann Triple Digit'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Listermann Triple Digit'));

--Adding another review/rating to same beer: 'Listermann Triple Digit'
INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Tien','Listermann Triple Digit', 4.0, 'This beer helps me through the hw');

INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Listermann Triple Digit'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Listermann Triple Digit'));

--Adding another review/rating to same beer: 'Listermann Triple Digit'
INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Tien','Dogberry Brewing Wildfire', 5.0, 'Best beer made from the monks');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Dogberry Brewing Wildfire'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Dogberry Brewing Wildfire'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Joel','Old Firehouse Probie', 4.0, 'The taste was nicely balanced and easy to drink with roast and peat presence.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Old Firehouse Probie'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Old Firehouse Probie'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Leigh','Cellar Dweller Copperhead', 3.5, 'This was nice and malty with a floral aroma and a spicy dry finish.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Cellar Dweller Copperhead'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Cellar Dweller Copperhead'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Jake','Bad Tom Smith', 4.5, 'The name says bad, but the taste says very good.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Bad Tom Smith'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Bad Tom Smith'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Edward','Bad Tom Smith', 3.5, 'I like the color and the fruity aroma.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Bad Tom Smith'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Bad Tom Smith'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Peter','Geo. Wiedemann', 2.5, ' Too much foam for me, and the taste was bitter.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Geo. Wiedemann'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Geo. Wiedemann'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Debbie','Great Crescent Coconut Porter', 4.5, 'I really like the coconut flavor, very nice.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Great Crescent Coconut Porter'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Great Crescent Coconut Porter'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Sharon','Eight Ball Prodigal', 4.2, 'The hops contribute notes of citrus and pine.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Eight Ball Prodigal'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Eight Ball Prodigal'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Mike','Eight Ball Prodigal', 4.7, 'Medium amber in color with good clarity and carbonation.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Eight Ball Prodigal'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Eight Ball Prodigal'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Howie','Rivertown Roebling Porter', 4.9, 'Now this is a rich, dark porter.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Rivertown Roebling Porter'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Rivertown Roebling Porter'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Sarah','Rivertown Roebling Porter', 4.2, 'The vanilla beans give this a great taste.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Rivertown Roebling Porter'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Rivertown Roebling Porter'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Dave','Rivertown Roebling Porter', 3.9, 'Anything with coffee flavor works for me.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Rivertown Roebling Porter'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Rivertown Roebling Porter'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Petra','Hofbrahaus Hofbrau Dunkel', 3.7, 'It reminded me of my childhood in Germany.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Hofbrahaus Hofbrau Dunkel'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Hofbrahaus Hofbrau Dunkel'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Ethan','Moerlein OTR Ale', 5.0, 'This red ale is the bomb; I would give it a 10 if I could.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Moerlein OTR Ale'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Moerlein OTR Ale'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Fred','MadTree Gnarly Brown', 3.8, 'Nice earthy, malty aroma bursts forth from the glass.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='MadTree Gnarly Brown'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='MadTree Gnarly Brown'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Pat','MadTree Lift', 4.6, 'This is such a refreshing and tasty beer.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='MadTree Lift'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='MadTree Lift'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Hank','MadTree Psychopathy', 2.6, 'This beer is driving me to madness with addiction.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='MadTree Psychopathy'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='MadTree Psychopathy'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Franz','MadTree Happy Amber', 3.4, 'There is a really nice caramel flavor in this.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='MadTree Happy Amber'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='MadTree Happy Amber'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Terry','MadTree Happy Amber', 4.4, 'Smell is fruity, autumnal, with lots of hops this is happy, hoppy amber.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='MadTree Happy Amber'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='MadTree Happy Amber'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Daisy','MadTree Happy Amber', 3.9, 'Golden amber color with a beautiful fluffy head and great lacing.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='MadTree Happy Amber'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='MadTree Happy Amber'));

INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Lola','Rhinegeist Cougar', 2.9, 'Fits the style of an American Blonde Ale.');
INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
FROM beerproduct
WHERE beerproduct.beer_name='Rhinegeist Cougar'),(select max(beerreview.review_id)
FROM beerreview
WHERE beerreview.beer_name='Rhinegeist Cougar'));



---QUERY TO GET BREWERY'S NAME, BREWERY'S BEER PRODUCTS & THE PRODUCTS' Reviews & Ratings,etc...
SELECT brewery.name as Brewery_Name, beerreview.reviewer, beerproduct.beer_name, beerproduct.beer_description, beer_rating, beer_review
FROM brewery
INNER JOIN  brewery_beerproduct ON brewery.brewery_id = brewery_beerproduct.brewery_id
INNER JOIN beerproduct ON brewery_beerproduct.beer_id = beerproduct.beer_id
INNER JOIN beerproduct_beerreview ON beerproduct.beer_id = beerproduct_beerreview.beer_id
INNER JOIN beerreview ON beerproduct_beerreview.review_id = beerreview.review_id;

--ROLLBACK;


COMMIT TRANSACTION;


