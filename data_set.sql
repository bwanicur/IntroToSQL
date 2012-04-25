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
  company_id INT(11) NOT NULL,
  email VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INT(11),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  KEY(company_id)
);

-- create skills table
CREATE TABLE skills (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY(id)
);
INSERT INTO skills (name) VALUES ('programming');
INSERT INTO skills (name) VALUES ('quality assurance');
INSERT INTO skills (name) VALUES ('project management');
INSERT INTO skills (name) VALUES ('customer service');
INSERT INTO skills (name) VALUES ('accounting');
INSERT INTO skills (name) VALUES ('sales');
INSERT INTO skills (name) VALUES ('design');
INSERT INTO skills (name) VALUES ('security');

-- create employees skills table
CREATE TABLE employees_skills (
  employee_id INT(11) NOT NULL,
  skill_id INT(11) NOT NULL,
  UNIQUE KEY(employee_id, skill_id)
);



-- COMPANY DATA:
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Lynch-Windler", "21142 Keshaun Heights", "Lake Savannah", "Iowa", "28604");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Kerluke Group", "80886 Chelsey Street", "Port Immanuel", "South Dakota", "68777");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Watsica-Marquardt", "84590 Hodkiewicz Crossing", "Mantetown", "Oklahoma", "55413-3732");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Batz LLC", "118 Jarrell Gateway", "New Marquise", "Alaska", "33648");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Ankunding, Lowe and Abshire", "3401 Lebsack Lakes", "East Reilly", "Missouri", "86342");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Cruickshank, Lakin and Marvin", "11781 Karine Spurs", "Hoppeport", "Pennsylvania", "20633-4990");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Lebsack-Frami", "4509 Rebecca Mountain", "Gloverborough", "Washington", "79048-0099");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Bechtelar, Turcotte and Hettinger", "11189 Fay Point", "Bartellland", "Mississippi", "44772");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Hintz-Lesch", "3786 Zulauf Centers", "New Timothyberg", "Kentucky", "42178-1223");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Abernathy, Luettgen and Olson", "2636 McKenzie Manors", "Rodfurt", "Oregon", "52534-9874");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Collier, Weber and Bayer", "23206 Auer Mall", "Bartolettiport", "North Carolina", "52521");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Reichert, Goldner and Hartmann", "2124 Hettinger Mount", "South Issacside", "New Jersey", "37254-8822");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Beer, Schimmel and Beahan", "57744 Victor Knoll", "Port Kaelaland", "Kentucky", "56665-5580");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Johnson, Reinger and Reichel", "98599 Alberta Keys", "Boyertown", "Maine", "15668");
INSERT INTO companies (name, street_address, city, state, zipcode) VALUES ("Ortiz-Gislason", "275 Wolff Rapid", "Port Jasminville", "South Dakota", "30884");



-- EMPLOYEE DATA:
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("augustus_muller@gmail.com",1, "Stanford","Bergnaum", 21);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("margot@hotmail.com",10, "Easton","Moore", 75);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("marty_mclaughlin@hotmail.com",8, "Lucie","Doyle", 91);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("reva.tremblay@yahoo.com",7, "Elliott","Ondricka", 36);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("meda.conn@gmail.com",4, "Maegan","Homenick", 48);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jerod@yahoo.com",12, "Keegan","Dare", 82);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("brayan_conroy@gmail.com",9, "Halle","Kuhic", 78);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("cierra@yahoo.com",7, "Xander","Williamson", 70);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("donavon@hotmail.com",4, "Hudson","Schamberger", 28);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("emilie.moore@yahoo.com",1, "Fabiola","Kautzer", 59);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("chloe_boyle@yahoo.com",8, "Bonita","Nader", 71);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("anjali@gmail.com",7, "Abigail","Morissette", 49);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("geo.mayert@gmail.com",11, "King","Bosco", 29);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("adolph@gmail.com",14, "Abdiel","Mueller", 63);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("deon.ondricka@hotmail.com",4, "Josue","Baumbach", 73);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("marguerite_lowe@gmail.com",6, "Zachary","Torp", 97);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("rupert@yahoo.com",3, "Sylvia","Kerluke", 99);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("alfonso@yahoo.com",12, "Terry","Prosacco", 64);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("tatum.mcglynn@yahoo.com",10, "Rachelle","Lemke", 35);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("johathan_cain@yahoo.com",11, "Shaina","Kunde", 37);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("rahul.becker@gmail.com",8, "Elsie","Grady", 31);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("domenic.gutkowski@gmail.com",1, "Avery","Smith", 52);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("nathanael@gmail.com",3, "Jennifer","Zulauf", 23);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("marcella@hotmail.com",8, "Donna","McClure", 50);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("bruce.kohler@hotmail.com",6, "Laurel","Mosciski", 73);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("dianna_quitzon@hotmail.com",4, "Ivory","Rempel", 59);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("barbara.kerluke@hotmail.com",3, "Rachelle","Mohr", 82);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("hobart@gmail.com",12, "Noah","Kiehn", 78);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("summer@hotmail.com",12, "Camylle","Smitham", 63);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("zora@gmail.com",8, "Amy","Grant", 76);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("aletha@yahoo.com",6, "Kraig","Wintheiser", 58);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("ernie.fadel@gmail.com",13, "Carley","Turner", 97);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("andreanne.lowe@yahoo.com",8, "Arthur","Thompson", 35);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("janice@yahoo.com",2, "Heath","Watsica", 61);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jeie@yahoo.com",12, "Kirsten","Sanford", 63);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("milton@hotmail.com",8, "Ashlee","Bailey", 77);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("toney_mante@gmail.com",3, "Josianne","Olson", 80);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("amari@hotmail.com",12, "Ernestine","Morar", 80);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("trudie.hahn@yahoo.com",12, "Scottie","Zemlak", 88);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("dion@gmail.com",11, "Elenora","Bode", 31);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("kaia.oberbrunner@gmail.com",4, "Carlie","Douglas", 21);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("ignatius@hotmail.com",2, "Connor","Howell", 92);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("kendra@hotmail.com",10, "Kimberly","D'Amore", 26);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("quentin.rippin@gmail.com",10, "Elsa","Goldner", 45);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("alfonzo.wilderman@yahoo.com",11, "Anna","Schaden", 50);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("justine@gmail.com",1, "Fidel","Cormier", 80);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("antonette.simonis@hotmail.com",12, "Lee","Rutherford", 84);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("avery_howell@gmail.com",14, "Everette","Jast", 73);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("treva.hilll@gmail.com",7, "Maxwell","O'Keefe", 88);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("berneice.dickinson@yahoo.com",7, "Jairo","Medhurst", 33);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("burley@hotmail.com",12, "Thalia","Kihn", 52);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("winston.toy@yahoo.com",7, "Madyson","Koss", 47);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("beulah_vonrueden@yahoo.com",6, "Dayna","West", 65);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("abigale@hotmail.com",6, "Zelda","Koss", 22);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("justice_lemke@yahoo.com",4, "Barton","Reichel", 94);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("tavares@hotmail.com",10, "Marcelino","Bartoletti", 46);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("toni.hansen@hotmail.com",4, "Deanna","Champlin", 65);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("cody@hotmail.com",10, "Domenico","Hermann", 75);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("nicolette.bayer@hotmail.com",9, "Tillman","Altenwerth", 82);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("melvin@yahoo.com",6, "Osbaldo","Thompson", 28);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("macie_stamm@hotmail.com",1, "Antone","Ryan", 30);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("nicolette@gmail.com",5, "Leonor","Torp", 27);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("darrick.beer@gmail.com",12, "Tremayne","Purdy", 25);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("keara@yahoo.com",3, "Gavin","Kuphal", 41);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("mary@hotmail.com",9, "Benton","Marks", 65);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("rosella_rice@yahoo.com",10, "Stephen","Howe", 49);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("rosalyn_haley@gmail.com",13, "Katlyn","Collins", 70);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("christian@yahoo.com",11, "Gene","Yost", 22);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("clair.mills@hotmail.com",6, "Kelvin","O'Hara", 100);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jairo_pollich@hotmail.com",7, "Nicolas","Schroeder", 86);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jimmie@gmail.com",3, "Kellen","Ledner", 33);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("murray@yahoo.com",5, "Lucy","Dicki", 61);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("lamont.cummerata@yahoo.com",12, "Kip","Schmeler", 52);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("josiah_nicolas@yahoo.com",2, "Tanner","Herzog", 100);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("dario_waters@yahoo.com",3, "Wilfred","Deckow", 78);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jalon.nienow@gmail.com",6, "Miller","Lehner", 63);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("barney_gaylord@gmail.com",13, "Cornelius","Gutmann", 25);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("savannah.tromp@yahoo.com",9, "Rey","Marvin", 45);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("gaylord@hotmail.com",11, "Alfred","Turcotte", 29);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("burley@hotmail.com",8, "Melvina","Dooley", 23);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("brandon_koepp@yahoo.com",12, "Mina","Kihn", 44);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("sienna_friesen@yahoo.com",6, "Merl","Hartmann", 53);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("kory.runolfon@gmail.com",2, "Baylee","Lockman", 40);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("myra@gmail.com",6, "Reilly","Ratke", 47);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("bret@hotmail.com",3, "Ima","Marvin", 94);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("libby@hotmail.com",5, "Kylee","Satterfield", 23);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("luther@hotmail.com",9, "Cynthia","Wintheiser", 60);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("cynthia@yahoo.com",8, "Tressie","Ondricka", 31);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("julie.welch@hotmail.com",14, "Stella","Tremblay", 63);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("hal@gmail.com",12, "Ruth","Leuschke", 91);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jake_windler@yahoo.com",4, "Ed","Weber", 95);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("esta@hotmail.com",2, "Tina","Denesik", 31);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("korbin_mckenzie@hotmail.com",1, "General","Bosco", 83);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jaycee_kertzmann@gmail.com",1, "Andy","Schultz", 59);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("claud@yahoo.com",9, "Lurline","Fahey", 76);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("nellie@hotmail.com",7, "Furman","Conn", 66);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("jazmin_hane@hotmail.com",1, "Izabella","Schaefer", 27);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("ernestine@gmail.com",2, "Rubie","Daniel", 44);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("helga@yahoo.com",6, "Herbert","Strosin", 71);
INSERT INTO employees (email, company_id, first_name, last_name, age) VALUES ("javier@gmail.com",8, "Jeremie","Leffler", 87);



-- EMPLOYEE SKILLS:
INSERT INTO employees_skills (employee_id, skill_id) VALUES (32, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (25, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (2, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (39, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (21, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (35, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (13, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (61, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (46, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (6, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (28, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (3, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (96, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (43, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (13, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (16, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (45, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (72, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (64, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (45, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (5, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (87, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (47, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (21, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (48, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (43, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (9, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (65, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (57, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (42, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (61, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (58, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (17, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (42, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (38, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (42, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (75, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (23, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (38, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (78, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (39, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (24, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (34, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (67, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (9, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (38, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (64, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (81, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (84, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (40, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (3, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (2, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (15, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (50, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (65, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (46, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (20, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (64, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (10, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (70, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (2, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (71, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (62, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (92, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (47, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (64, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (39, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (60, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (94, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (71, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (24, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (6, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (19, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (65, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (20, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (17, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (77, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (28, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (74, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (80, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (35, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (79, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (46, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (95, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (55, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (44, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (11, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (49, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (73, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (18, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (25, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (71, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (5, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (63, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (32, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (46, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (76, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (77, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (54, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (52, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (45, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (39, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (75, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (88, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (42, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (94, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (20, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (81, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (59, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (52, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (89, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (86, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (65, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (78, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (8, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (9, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (29, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (58, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (7, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (99, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (91, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (70, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (94, 2);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (23, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (94, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (4, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (51, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (58, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (31, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (80, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (74, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (51, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (88, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (36, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (32, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (91, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (43, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (30, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (10, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (87, 4);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (91, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (61, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (13, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (77, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (68, 1);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (38, 7);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (81, 6);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (24, 3);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (66, 5);
INSERT INTO employees_skills (employee_id, skill_id) VALUES (50, 7);



