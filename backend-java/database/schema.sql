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
---Input data for breweries into brewery table------------
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

INSERT INTO brewery(isactive,name, brewer_username, address_street , address_city, address_state,  address_zip, phone_number, history, days_operation, hours_operation, brewery_image) 
VALUES (TRUE,'Bircus Brewing Co', 'ajhauser', '322 Elm St', 'Ludlow', 'KY', 41016, '(859)317-3778', 'They set forth to expand the Ludlow Theatre into a brewery connected to local history, community outreach, unique entertainment and stellar beer.', 'Mon-Sun', '10:00am - 12:00pm', '');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'MadTree Brewing Co', 'tdaniels', '3301 Madison Rd', 'Cincinnati', 'OH', 45209, '(513)836-8733', 'MadTree puts purpose in every pour. Founded in 2013, MadTree has always been driven to craft great beer.', 'Mon-Sun', '11:00am - 11:00pm','');

INSERT INTO brewery(isactive,name, brewer_username, address_street, address_city, address_state, address_zip, phone_number, history, days_operation,  hours_operation, brewery_image) 
VALUES (TRUE,'Rhinegeist Brewery', 'mgrady', '1910 Elm St', 'Cincinnati', 'OH', 45202, '(513)381-1367', 'Rhinegeist started in 2005, Bob Bonder and Bryant Goulding we’re thrilled to have the opportunity to bring great people together, to foment fantastic ideas, and to build a community that values craft beer and one another.', 'Mon-Sun', '3:00pm - 12:00pm','');


----------------------------------------------------------------------------------------------------------------------------------------------------------------

--For Brewer to add new beer into brewery
INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) VALUES (TRUE, 'Bud USA','AMERICAN BEER', '5.0', 'Lager','https://images.squarespace-cdn.com/content/v1/5c2d190d5ffd20fcfe3de667/1594250082106-B2OV6B6NLGXSS4UFFVYH/ke17ZwdGBToddI8pDm48kJKo3YTR7zgUvInmXMbZ6zZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0geeCvn1f36QDdcifB7yxGjTk-SMFplgtEhJ5kBshkhu5q5viBDDnY2i_eu2ZnquSA/NewBeers.DayBracey.TABLE.Summer2020');
INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) VALUES (TRUE, 'Light Years','low alcohol beer', '1.0', 'malt beer','https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80');
INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) VALUES (TRUE, 'Blue Sun','Europe beer', '5.0', 'dark beer','https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Truth IPA', 'Intensely hopped, and all those hops give peach, mango and passion fruit notes.', '7.2', 'IPA','090RhinTruth.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Cougar', 'It has a brilliant malt character, balanced yet dry with crystal and bravo hops.', '4.8', 'Golden Ale','091RhinCougar.png');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Cheetah', 'It has a brilliant malt character, balanced yet dry with crystal and bravo hops.', '4.8', 'Lager','092RhinCheetah.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Knowledge', 'It has a brilliant malt character, balanced yet dry with crystal and bravo hops.', '4.8', 'Golden Ale','093RhinKnowledge.jpg');


INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Psychopathy IPA', 'Blend of citrus, bright, and floral aromas; citrus flavors follow a smooth bitterness.', '6.9', 'IPA','094MadPyschopathy.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Happy Amber', 'This dry-hopped ale combines caramel and biscuit flavors, with a fine balance of hops and malts.', '6', 'Amber Ale','095MadHappyA.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Gnarly Brown', 'Malts bring hints of brown sugar and vanilla; roasted coffee malt flavors obscure lines between brown ale and porter.', '7', 'Brown Ale','096MadGnarly.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Lift', 'A crisp refreshing beer with a hint of orange will lift your spirits high.', '4.7', 'Kolsch','097MadLift.jpg');


INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rapture', 'A well balanced belgian style imperial with chocolatey notes.', '9.7', 'Stout','030HMRapture.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Abbey', 'A bright belgian forward with subtle notes of banana and clove esters and a mild hoppy finish.', '7.4', 'Red Ale','031HMAbbey.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Haze Goggles', 'A New England style IPA.', '6.9', 'IPA','032HMHazeGoggles.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Bobs Your Uncle','A fully body classic english mild with notes of carmel and roast but sessional and easy on the palet.', '4.4', 'English Mild Ale','033HMBobsYourUncle.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Devoted', 'A Trappist style beer with rich malty flavor, a copper color, and dark fruit notes.', '7', 'Belgian Dubbel','034HMDevoted.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Tollhouse', 'Black color with moderate bitterness. Strong roasted coffee flavor and aroma with hints of chocolate.', '7.9', 'Stout','035FibTollhouse.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Oberhausen', 'Very pale color with medium bitterness. Somewhat vinous (grape-like) with a dry finish.', '5.6', 'Kolsch','037FibOberhausen.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Hoy Tripel', 'Bright gold color with little bitterness. A big, dense, creamy head with a full mouthfeel. Slightly fruity with a sweet finish.', '8.9', 'Belgian Tripel','038FibHoyTripel.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'The Noid', 'Irish red ale with honey.', '5.6', 'Red Ale','039FibTheNoid.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Earth Daisy', 'Reddish amber color with high bitterness. Rich malt flavor with hints of caramel and a slight peppery finish.', '8.9', 'IPA','036FibEarthDaisy.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'This is the New Stuff', 'A hazy-looking New England style IPA.', '7.3', 'IPA','040SCBThisITNS.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Girl Got Reasons', 'Sweet, salty, tart. A great Gose for any sour fan.', '3.7', 'Sour Gose','041SCBGirlGotReasons.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Good Enough For Me', 'Notes of cinnamon and nutmeg, bring this raisin soaked Amber together.', '5', 'Red Ale','042SCBGoodEnough.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Raised On Promises', 'Straight forward, middle of the road Blonde. Nothing fancy and that is how we like it.', '4.7', 'Blonde Ale','043SCBRaised.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'We Been Dancin', 'With notes of caramel and honey this malt forward Brown Ale will have you dancin.', '5', 'Brown Ale','044SCBWeBeenDancin.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Moozie', 'It is a rich, milk stout. Like a chocolate milkshake without the straw.', '6.2', 'Stout','045BBMoozie.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Hold the Reins', 'Full flavored, moderate sweetness, a bit nutty with a touch of caramel. Chocolate and roast notes give way to a dry finish.', '4.7', 'English Mild Ale', '046BBHoldTR.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Afterglow NE IPA', 'It is bursting with citrusy hop flavors and has a tropical, citrus, and pine aroma.', '6.3', 'IPA', '047BBAfterglow.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Debbie Jean Blonde', 'Pale malts are used to craft a beer with delicate bread and biscuit notes. Only the slightest hint of hops and negligible bitterness.', '4.6', 'Blonde Ale', '048BBDebbieJB.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'J-Boy IPA', 'An American style IPA.', '7.2', 'IPA', '049BBJ_Boy.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Triple Digit Chickow', 'Hazelnut Double Brown Ale.', '10', 'Brown Ale', '050ListTDChickow.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Nutcase Peanut Butter Porter', 'A nice smooth porter with a back end of peanut butter happiness.', '6.8', 'Porter', '051ListNutcase.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Team Fiona', 'It is a very pleasant, quaffable tropical and citrus forward IPA with little to no bitterness.', '7.2', 'IPA', '052ListTeamFiona.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Shamrock Shake', 'Irish Cream Stout: Please note there is no mint in this beer.', '5.5', 'Stout', '053ListShamrock.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Friar Bacon Smoked Bock', 'New England style IPA with Citra hops.', '8', 'IPA', '054ListFriarBSB.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Poundsign Nofilter', 'Tropical fruit and haze for days, has a mango, pineapple and tropical fruit flavor and aroma with a smooth and juicy finish.', '7.2', 'IPA New England', '055GWPoundSign.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'My Blue Heaven', 'Malty backbone English style ale with just enough blueberry to refresh the palate - not your typical fruit beer.', '5.3', 'Fruit Beer', '056GWMBHeaven.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rusty Bumper', 'Smooth drinking brown ale with hints of coffee and chocolate.', '5.7', 'Brown Ale', '057GWRustyB.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Rebel Yell', 'Made with pilsner malt and Mosaic this dry hopped beauty is refreshing and finishes dry.', '5.7', 'Pale Ale', '058GWRebelYell.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Brewers Breakfast', 'Imperial Stout made with oatmeal, dark chocolate, and coffee from local roaster Resurgam.', '8', 'Stout', '059GWBrewersBr.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Finn', 'A Tart Pale Ale, which is hopped like a citrusy American Pale Ale wit a crisp tartness.Citrus & apricot hop flavors lead the charge.', '5.3', 'IPA Sour', '060UAFinn.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'The Gadget', 'A Midwest Fruit Tart Ale with 1,280 lbs of blackberries, 1,280 lbs of raspberries & 30 g of vanilla beans per 30 BBL batch.', '7.9', 'Sour Fruited', '061UATheGadget.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Fire Iron', 'This Midwest Fruit Tart Ale is brewed with 1,500 lbs of pink guava, 500 lbs of banana, and 400 lbs of passion fruit per 30 bbl batch.', '7.7', 'Fruit Beer', '063UAFireIron.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Pinwheel', 'Gose brewed with 500 lbs of oranges, 22 lbs of sea salt, 1 lb of coriander & 30 g of vanilla beans per 30 BBL batch.', '4.5', 'Sour Fruited Gose', '062UAPinwheel.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Landline', 'A Midwest Fruit Tart Ale with 2,000 lbs of Banana and 1,000 lbs of Red Raspberry per 30 bbl batch.', '7.7', 'Fruit Beer', '064UALandline.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Reba', 'Light, effervescent bubbles come to mind when you sip on this beauty but not light on taste.', '5.3', 'Blonde Ale', '065FretReba.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Trey', 'Truly a unique and rich amber ale that is supplied with earthy notes of the Ahtanum hop.', '5.7', 'Red Ale', '066FretTrey.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Fugee', 'A great brown ale.', '6.4', 'Brown Ale', '067FretFugee.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Vlad', 'Vlad is a traditional German Pilsner.', '5.3', 'Pilsner', '068FretVlad.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Juicy Improv', 'An American IPA.', '7.1', 'IPA', '069FretJuicyImpr.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Earth Cookie', 'Nut Brown Strong Ale with deep mahogany color with just a hint of chocolate and coffee.', '6', 'Brown Ale', '070LMBEarthCookie.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Grateful IPA', 'A fruity IPA brewed with a famous San Francisco brewery yeast strain. Also a large amount of American hops (cascade, centennial, and chinook) for a piney, citrusy hit of goodness.', '6', 'IPA', '071LMBGrateful.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Pterodactyl', 'Classic Bavarian Wheat beer. Notes of banana and clove from the process of fermentation.', '5.4', 'Hefeweizen', '072LMBPterodactyl.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Misty Mountain Hop IPA', 'Hoppy Piney, Citra.', '7', 'IPA', '073LMBMMHop.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Buzz Saw', 'Copper colored and a blend of classic American hops that celebrates the style. Easy drinking with just enough hop.', '6.9', 'Pale Ale', '074LMBBuzzsaw.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Wildfire', 'Crisp malt bodies IPA with bright hop notes brewed with peppercorn and coriander.', '6.7', 'IPA', '075DBWildfire.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Brays On Target', 'Crisp roast, rich malt body with a hint of coffee and wood.', '5.7', 'Brown Ale', '076DBBrays.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Nats Nightcap', 'Dark and dry American Stout with a medium body, sharp roast and light smokey note.', '5.8', 'Stout', '077DBNatsNC.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Blonde', 'Light color, mild malt depth with a touch of floral hop tones.', '5.7', 'Blond Ale', '078DBBlonde.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Supernova', 'Double Chocolate Stout', '8.4', 'Stout', '079DBSupernova.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Storm', 'A medium body with a creamy palate feel. The aroma is a balance between subtle corn and malt-like notes.', '4.8', 'Cream Ale', '080BraxStorm.jpeg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Tropic Flare', 'The tropical punch aroma of ripe mango, pineapple and grapefruit will hit your palette.', '6.8', 'IPA', '081BraxTropicF.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Dead Blow', 'Dead Blow is a dry, roasty, fruity, full bodied, smooth stout, that is lighter on bitterness.', '7.2', 'Stout', '082BraxDeadBlow.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Blown Gasket', 'This robust porter is a darker offering with a noticeably roasty aroma.', '7.5', 'Porter', '083BraxBlownG.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Haven', 'A medium bodied, full flavored and easy drinking unfiltered wheat beer.', '5.2', 'Hefeweizen', '084BraxHaven.png');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Showman', 'A neutral house yeast keeps the background soft to ensure this beer stays hop forward from start to finish.', '6.8', 'IPA', '085BircusShowman.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Lagoon', 'Six kinds of grain bring out a complex character in this Scotch Ale.', '8', 'Scotch Ale', '086BircusLagoon.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'The Breaded Lady', 'To this light, easy drinking beer, German Mandarina hops add a subtle orange aroma.', '4.8', 'Kolsch', '087BircusBreaded.jfif');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Ludlow', 'An assertive traditional American pale that has a few non-traditional ingredients.', '5', 'Pale Ale', '088BircusLudlow.jpg');

INSERT INTO beerproduct(isactive, beer_name, beer_description, abv, beer_type, beer_image) 
VALUES (TRUE, 'Miss Patterson', 'This balanced Belgian ale contains an elegant mixture of spices to compliment the present malty sweetness.', '5.9', 'Belgian Blonde', '089BircusMissP.jpg');



----For Brewer to add new beer into brewery

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Bircus Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Showman'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Bircus Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Lagoon'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Bircus Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='The Breaded Lady'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Bircus Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Ludlow'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Bircus Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Miss Patterson'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Light Years'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Storm'));

-- ----For Brewer to add new beer into brewery
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Tropic Flare'));
-- ----For Brewer to add new beer into brewery
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Dead Blow'));
-- ----For Brewer to add new beer into brewery
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Blown Gasket'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Braxton'),(select beer_id 
FROM beerproduct
WHERE beer_name='Haven'));


INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='DogBerry Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Wildfire'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='DogBerry Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Brays On Target'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='DogBerry Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Nats Nightcap'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='DogBerry Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Blonde'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='DogBerry Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Supernova'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Earth Cookie'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Grateful IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Pterodactyl'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Misty Mountain Hop IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Little Miami Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Buzz Saw'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Reba'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Trey'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Fugee'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Vlad'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fretboard Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Juicy Improv'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='Finn'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='The Gadget'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='Fire Iron'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='Pinwheel'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Urban Artifact'),(select beer_id 
FROM beerproduct
WHERE beer_name='Landline'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Poundsign Nofilter'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='My Blue Heaven'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Rusty Bumper'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Rebel Yell'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Grainworks Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Brewers Breakfast'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Listerman Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Triple Digit Chickow'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Listerman Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Nutcase Peanut Butter Porter'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Listerman Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Team Fiona'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Listerman Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Shamrock Shake'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Listerman Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Friar Bacon Smoked Bock'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Brink Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Moozie'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Brink Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Hold the Reins'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Brink Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Afterglow NE IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Brink Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Debbie Jean Blonde'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Brink Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='J-Boy IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='This is the New Stuff'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Girl Got Reasons'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Good Enough For Me'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='Raised On Promises'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Swine City Brewing'),(select beer_id 
FROM beerproduct
WHERE beer_name='We Been Dancin'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Tollhouse'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Earth Daisy'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Oberhausen'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='Hoy Tripel'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Fibonacci Brewing Company'),(select beer_id 
FROM beerproduct
WHERE beer_name='The Noid'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Rapture'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Abbey'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Haze Goggles'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Bobs Your Uncle'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Humble Monk Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Devoted'));

--- took these out of schema because "violated not null constraint"
INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Rhinegeist Brewery'),(select beer_id 
FROM beerproduct
WHERE beer_name='Truth IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Rhinegeist Brewery'),(select beer_id 
FROM beerproduct
WHERE beer_name='Cougar'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Rhinegeist Brewery'),(select beer_id 
FROM beerproduct
WHERE beer_name='Cheetah'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='Rhinegeist Brewery'),(select beer_id 
FROM beerproduct
WHERE beer_name='Knowledge'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='MadTree Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Psychopathy IPA'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='MadTree Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Happy Amber'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='MadTree Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Gnarly Brown'));

INSERT INTO brewery_beerproduct(brewery_id, beer_id) VALUES ((select brewery_id 
FROM brewery
WHERE brewery.name='MadTree Brewing Co'),(select beer_id 
FROM beerproduct
WHERE beer_name='Lift'));

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

-- INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
-- FROM beerproduct
-- WHERE beerproduct.beer_name='Listermann Triple Digit'),(select max(beerreview.review_id)
-- FROM beerreview
-- WHERE beerreview.beer_name='Listermann Triple Digit'));

--Adding another review/rating to same beer: 'Listermann Triple Digit'
-- INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Tien','Listermann Triple Digit', 4.0, 'This beer helps me through the hw');

-- INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
-- FROM beerproduct
-- WHERE beerproduct.beer_name='Listermann Triple Digit'),(select max(beerreview.review_id)
-- FROM beerreview
-- WHERE beerreview.beer_name='Listermann Triple Digit'));

--Adding another review/rating to same beer: 'Listermann Triple Digit'
-- INSERT INTO beerreview(reviewer, beer_name, beer_rating, beer_review) VALUES ('Tien','Dogberry Brewing Wildfire', 5.0, 'Best beer made from the monks');

-- INSERT INTO beerproduct_beerreview(beer_id, review_id) VALUES ((select beerproduct.beer_id 
-- FROM beerproduct
-- WHERE beerproduct.beer_name='Dogberry Brewing Wildfire'),(select max(beerreview.review_id)
-- FROM beerreview
-- WHERE beerreview.beer_name='Dogberry Brewing Wildfire'));




---QUERY TO GET BREWERY'S NAME, BREWERY'S BEER PRODUCTS & THE PRODUCTS' Reviews & Ratings,etc...
-- SELECT brewery.name as Brewery_Name, beerreview.reviewer, beerproduct.beer_name, beerproduct.beer_description, beer_rating, beer_review
-- FROM brewery
-- INNER JOIN  brewery_beerproduct ON brewery.brewery_id = brewery_beerproduct.brewery_id
-- INNER JOIN beerproduct ON brewery_beerproduct.beer_id = beerproduct.beer_id
-- INNER JOIN beerproduct_beerreview ON beerproduct.beer_id = beerproduct_beerreview.beer_id
-- INNER JOIN beerreview ON beerproduct_beerreview.review_id = beerreview.review_id;


COMMIT TRANSACTION;


