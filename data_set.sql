-- The point of this file is to give you a larger data set to play with.  I purposefully left out any kind of relationships (Foreign Keys, etc...).  Feel free to alter these tables or add new tables to create relationships bewtween these 2 resources.

-- create companies table
CREATE TABLE companies (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  street_address VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  zipcode VARCHAR(255),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)  
);


-- create employees table
CREATE TABLE employees (
  id INT(11) AUTO_INCREMENT,
  email VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INT(11),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);


-- some relationship ideas
-- 1.  Add a Foreign Key to the employees table and join against companies
-- 2.  Add an intersection table between employees
-- 3.  Add a new table (skills or categories) and create "one to many" or "many to many" relationships

-- Here's the data:


-- COMPANY DATA:
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Armstrong and Sons", "787 Gislason Summit", "Destinfurt", "Delaware", "59924-0359");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Will, Nikolaus and Blanda", "50697 Mack Turnpike", "Lake Kaleshire", "Colorado", "45474-4977");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Breitenberg and Sons", "13680 Mellie Street", "Stromanmouth", "Indiana", "67030");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("McLaughlin Inc", "134 Arvel Burgs", "South Mustafa", "Mississippi", "38007-7608");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Hyatt and Sons", "3780 Lilyan Dale", "Lake Mortimer", "New Jersey", "86166");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Heaney, Connelly and Mills", "278 Deja Street", "Georgeland", "Missouri", "52686-6810");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Langworth-Beatty", "4945 Dewitt Lodge", "Port Kyler", "South Dakota", "96944-5597");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Brown-Greenfelder", "9367 Kling Orchard", "West Dawnview", "Kentucky", "78712");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Reilly, Monahan and Dare", "2302 Cortney Mews", "South Tristianburgh", "Tennessee", "89564");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Schuppe, Gibson and Botsford", "39628 Schumm Track", "East Makaylafort", "Ohio", "11566");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Ankunding Group", "992 Welch Lane", "Michaelaview", "South Dakota", "54995-8511");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Sanford-Conn", "9536 Johathan Park", "Nikolausshire", "North Carolina", "99039-6034");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Leuschke-Koelpin", "918 Simone Club", "Georgefort", "Idaho", "90559");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("McKenzie-Schaefer", "2766 Denesik Alley", "Wisozkfort", "Idaho", "19946-8500");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Crooks, Lakin and Upton", "1969 Huel Curve", "Maxineshire", "Maryland", "94499");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Grady, Fritsch and McDermott", "280 Beryl Place", "Leslieland", "Pennsylvania", "21767");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("White, Bashirian and Wisozk", "966 Kirlin Shoal", "Lake Dwightmouth", "New York", "15918-1977");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Bartoletti Inc", "73507 Marisa Trafficway", "Port Lyda", "Texas", "26747-1160");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Jewess LLC", "76957 Lueilwitz Mountains", "East Jasper", "California", "80700");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Bode-Turner", "51490 Reynolds Spur", "East Mabelmouth", "Iowa", "51990");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Beahan, Douglas and Adams", "687 Rath Loaf", "Darwinbury", "Oklahoma", "47215");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Wilkinson, Ferry and Hauck", "5451 Funk Shoal", "Port Marcelina", "West Virginia", "83836");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Lesch LLC", "8780 Daron Cliffs", "Murazikton", "South Dakota", "43415-8811");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Cruickshank, Kerluke and Hodkiewicz", "35433 Clementine Drives", "Gabriellefurt", "Arizona", "64649-5440");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Bednar, Walker and Medhurst", "173 Caitlyn Pass", "New America", "Rhode Island", "22339");



-- EMPLOYEE DATA:
INSERT INTO employees (email, first_name, last_name, age) VALUES ("marquise.heel@hotmail.com","Glenda","Funk", 56);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("hudson@hotmail.com","Kurt","Schinner", 67);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("trevor@gmail.com","Martine","Rice", 82);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("addison.bartoletti@yahoo.com","Jacinthe","Deckow", 41);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("zena@yahoo.com","Lupe","Krajcik", 69);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("tyson.bosco@hotmail.com","Maiya","Trantow", 60);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("myrtice@hotmail.com","Otha","Marks", 41);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("camilla@hotmail.com","Dortha","Kuvalis", 98);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("asha.hickle@yahoo.com","Janick","Renner", 48);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("amaya_lowe@hotmail.com","Sydnie","Blanda", 45);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("louisa.kshlerin@hotmail.com","Wilbert","Aufderhar", 29);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("sasha@yahoo.com","Izaiah","Willms", 66);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("laila.fadel@yahoo.com","Dominique","Okuneva", 33);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("luther@gmail.com","Anabel","Greenfelder", 100);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("june_dare@gmail.com","Esmeralda","D'Amore", 70);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("albert_hickle@yahoo.com","Reuben","Shields", 35);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("eusebio@yahoo.com","Antonina","O'Keefe", 84);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("cleve@hotmail.com","Aubrey","Dare", 65);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("berneice@yahoo.com","Daphney","Rempel", 68);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("murl_schinner@hotmail.com","Camille","Price", 52);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("alexandro_mante@yahoo.com","Rasheed","Sporer", 24);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("cheyenne.runolfsdottir@hotmail.com","Evalyn","Davis", 57);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("fay_lueilwitz@gmail.com","Bennett","Renner", 53);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("merle@yahoo.com","Axel","Swift", 73);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("casimer@gmail.com","Domenic","Connelly", 31);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("sandrine_klocko@hotmail.com","Tate","Morar", 65);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("aracely@hotmail.com","Santos","Little", 54);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("eriberto@yahoo.com","Perry","Collier", 48);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("alba@hotmail.com","Hazle","Trantow", 21);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("helga.streich@yahoo.com","Ona","Douglas", 91);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("moriah.kohler@gmail.com","Madeline","Kutch", 39);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("rosalee@gmail.com","Tanner","Konopelski", 83);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("eladio_stracke@gmail.com","Mellie","Reichert", 35);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("rosanna.moriette@yahoo.com","Eloise","Hansen", 74);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("arvilla@gmail.com","Nadia","Rogahn", 25);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("raoul@yahoo.com","Eunice","Blanda", 71);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("alene@hotmail.com","Henderson","Armstrong", 70);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("lucie.kunde@hotmail.com","Vern","Halvorson", 90);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("carmela.glover@gmail.com","Vanessa","Ruecker", 67);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("virginie_harber@gmail.com","Kaycee","Ward", 81);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("michele_herzog@hotmail.com","Danyka","Osinski", 48);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("arely@gmail.com","Jacklyn","Bernier", 37);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("kelly.feil@yahoo.com","Karley","Schneider", 79);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("deshaun@gmail.com","Brice","McLaughlin", 69);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("alverta@gmail.com","Tara","Konopelski", 23);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("carleton@hotmail.com","Jayne","Hudson", 34);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("martine@yahoo.com","Merle","Purdy", 42);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("felicita_keebler@yahoo.com","Lue","Cummerata", 21);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("porter@hotmail.com","Tyra","Schamberger", 74);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("una.mccullough@hotmail.com","Nels","Beahan", 44);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("haan@hotmail.com","Danielle","Berge", 29);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("sigurd_wolf@hotmail.com","Hobart","Hermann", 43);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("gregg_kirlin@yahoo.com","Erling","Ritchie", 50);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("oswaldo@gmail.com","Waino","Kassulke", 63);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("gus@hotmail.com","Eldridge","Metz", 29);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("modesto@yahoo.com","Karson","Larson", 93);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("marianne@gmail.com","Willow","Willms", 63);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("tad@gmail.com","Shany","Bailey", 57);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("thaddeus_leuschke@yahoo.com","Bernie","Rodriguez", 66);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("olga_emard@hotmail.com","Helene","Conn", 24);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("lonzo@hotmail.com","Brisa","Weber", 39);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("pinkie@gmail.com","Arden","Little", 24);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("caie.carter@yahoo.com","Sebastian","Zieme", 46);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("mortimer.mclaughlin@gmail.com","Abbie","Hilll", 41);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("ila@yahoo.com","Jaida","Mitchell", 71);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("elroy@yahoo.com","Pamela","Mertz", 29);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("obie@yahoo.com","Ernestine","Kunze", 40);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("kayla_effertz@yahoo.com","Nicola","Lang", 69);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("orlo.leannon@yahoo.com","Horacio","Sanford", 84);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("clarabelle@gmail.com","Vance","Mosciski", 97);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("rachel@hotmail.com","Eli","Brakus", 36);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("haylee@yahoo.com","Lavon","Hintz", 96);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("torrey@hotmail.com","Emmy","Daniel", 62);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("dudley.dach@yahoo.com","Kim","Monahan", 50);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("nelson@hotmail.com","Harry","Reynolds", 62);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("claire.prosacco@hotmail.com","Guiseppe","Donnelly", 84);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("emerald@hotmail.com","Keely","Funk", 96);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("troy@yahoo.com","Karli","Crona", 37);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("yasmine@hotmail.com","Robbie","Hegmann", 50);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("ignatius_graham@yahoo.com","Aracely","Kilback", 23);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("jazlyn.johnson@gmail.com","Lacy","Bahringer", 99);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("maryjane.bins@hotmail.com","Benedict","Littel", 57);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("flo_block@gmail.com","Vance","Altenwerth", 99);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("elliot@gmail.com","Domenica","Brakus", 37);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("keeley@yahoo.com","Bo","Kreiger", 64);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("kamren@hotmail.com","Clarabelle","Sawayn", 86);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("alia.bradtke@yahoo.com","Meta","Rosenbaum", 69);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("sadie@gmail.com","Brock","Wolf", 29);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("louie@gmail.com","Humberto","Metz", 55);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("annetta.grant@yahoo.com","Vernie","Zboncak", 44);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("winfield@gmail.com","Colton","Champlin", 29);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("federico@hotmail.com","Elda","Keebler", 44);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("emerson@yahoo.com","Gunnar","Hessel", 28);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("micah@gmail.com","Esther","Crist", 66);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("kali.little@gmail.com","Kiley","Lesch", 39);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("moises.dickens@hotmail.com","Melba","Bauch", 80);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("eudora@yahoo.com","Lempi","Gorczany", 88);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("misty_cronin@gmail.com","Bo","Zboncak", 71);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("bonnie@hotmail.com","Maybell","Rice", 32);
INSERT INTO employees (email, first_name, last_name, age) VALUES ("brandt@yahoo.com","Elmore","Predovic", 22);
