CREATE TABLE IF NOT EXISTS wizard_deposits (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(60),
  notes TEXT,
  age INT NOT NULL,
  magic_wand_creator VARCHAR(100),
  magic_wand_size INT NOT NULL,
  deposit_group VARCHAR(20) NOT NULL,
  deposit_start_date DATE DEFAULT NULL,
  deposit_amount NUMERIC(8, 2),
  deposit_interest NUMERIC(5, 2),
  deposit_charge NUMERIC(8, 2),
  deposit_expiration_date DATE DEFAULT NULL,
  is_deposit_expired BIT(1),
  CONSTRAINT wizard_deposits_age_check CHECK (age >= 0),
  CONSTRAINT wizard_deposits_magic_wand_size_check CHECK (magic_wand_size >= 0),
  CONSTRAINT wizard_deposit_amount_check CHECK (deposit_amount >= 0),
  CONSTRAINT wizard_deposit_interest_check CHECK (deposit_interest >= 0),
  CONSTRAINT wizard_deposit_charge_check CHECK (deposit_charge >= 0)
);


INSERT INTO wizard_deposits (
	first_name, last_name, notes, age, magic_wand_creator, magic_wand_size, deposit_group, deposit_start_date, deposit_amount, deposit_interest, deposit_charge, deposit_expiration_date, is_deposit_expired
) 
VALUES
	('Hannah', 'Abbott', 'Hufflepuff student in Harry`s year and member of Dumbledore`s Army.', 71, 'Antioch Peverell', 19, 'Troll Chest', '1990-09-27', 47443.03, 29.28, 73.00, '1991-04-08', B'0'),
	('Bathsheda', 'Babbling', 'Ancient Runes teacher at Hogwarts', 63, 'Ollivander family', 20, 'Human Pride', '1986-03-27', 46597.40, 26.64, 64.00, '1986-05-16', B'1'),
	('Ludo', 'Bagman', 'Quidditch Beater for the Wimbourne Wasps and Head of the Department of Magical Games and Sports within the Ministry of Magic', 19, 'Mykew Gregorovitch', 18, 'Venomous Tongue', '1990-07-04', 23190.94, 14.92, 30.00, '1990-12-27', B'0'),
	('Bathilda', 'Bagshot', 'Author of A History of Magic, great aunt of Gellert Grindelwald.', 52, 'Jimmy Kiddell', 15, 'Blue Phoenix', '1993-06-07', 687.67, 18.18, 62.00, '1993-09-10', B'0'),
	('Katie', 'Bell', 'Gryffindor student one year above Harry Potter; Chaser on the Gryffindor Quidditch team.', 40, 'Arturo Cephalopos', 14, 'Troll Chest', '1981-05-08', 8092.93, 16.58, 11.00, '1982-02-03', B'1'),
	('Cuthbert', 'Binns', 'Ghost, History of Magic professor.', 28, 'Death', 23, 'Human Pride', '1985-10-26', 11902.72, 24.84, 95.00, '1985-12-27', B'1'),
	('Phineas', 'Nigellus', 'deceased great-great-grandfather of Sirius Black and former headmaster of Hogwarts, whose painting still hangs in the office and helps out the current headmaster.', 47, 'Mykew Gregorovitch', 18, 'Venomous Tongue', '1985-12-05', 11248.58, 12.31, 32.00, '1986-11-12', B'1'),
	('Regulus', 'Arcturus', 'Late brother of Sirius Black, a Death Eater who had turned against Lord Voldemort.', 46, 'Ollivander family', 22, 'Blue Phoenix', '1989-05-31', 1173.12, 9.68, 56.00, '1989-10-13', B'0'),
	('Sirius', 'Black', 'Harry Potter`s godfather, a member of the Order of the Phoenix and prisoner on the run.', 25, 'Mykew Gregorovitch', 30, 'Troll Chest', '1993-08-29', 15793.54, 26.34, 17.00, '1994-05-21', B'0'),
	('Amelia', 'Bones', 'Head of the Department of Magical Law Enforcement, aunt of Susan Bones.', 16, 'Antioch Peverell', 30, 'Human Pride', '1981-05-15', 18778.37, 7.85, 54.00, '1982-05-06', B'1'),
	('Susan', 'Bones', 'Hufflepuff student in Harry`s year, a member of Dumbledore`s Army.', 72, 'Ollivander family', 11, 'Venomous Tongue', '1992-05-03', 26463.40, 30.54, 30.00, '1993-03-11', B'0'),
	('Terry', 'Boot', 'Ravenclaw student in Harry`s year, a member of Dumbledore`s Army.', 69, 'Mykew Gregorovitch', 28, 'Blue Phoenix', '1989-09-09', 31029.60, 27.98, 10.00, '1990-02-15', B'0'),
	('Lavender', 'Brown', 'Gryffindor student in Harry`s year, a member of Dumbledore`s Army, briefly Ron Weasley`s girlfriend.', 31, 'Jimmy Kiddell', 24, 'Troll Chest', '1992-03-26', 26572.86, 26.64, 94.00, '1992-08-21', B'0'),
	('Millicent', 'Bulstrode', 'Slytherin student in Harry`s year, a member of Umbridge`s Inquisitorial Squad.', 65, 'Arturo Cephalopos', 17, 'Human Pride', '1988-08-16', 33309.81, 25.43, 44.00, '1988-08-21', B'1'),
	('Charity', 'Burbage', 'Professor of Muggle Studies at Hogwarts during Harry`s time at school.', 38, 'Death', 30, 'Venomous Tongue', '1994-07-21', 33508.64, 17.14, 31.00, '1995-04-06', B'0'),
	('Frank', 'Bryce', 'Muggle gardener for the Riddle family.', 24, 'Antioch Peverell', 29, 'Blue Phoenix', '1991-12-20', 19955.71, 6.52, 30.00, '1992-07-22', B'0'),
	('Alecto', 'Carrow', 'Sister of Amycus Carrow, Death Eater and professor of Muggle Studies for one year, Deputy Headmistress of Hogwarts under Severus Snape', 52, 'Jimmy Kiddell', 24, 'Troll Chest', '1982-03-28', 25434.21, 14.96, 36.00, '1982-09-17', B'1'),
	('Amycus', 'Carrow', 'Brother of Alecto Carrow, Death Eater and professor of Defence Against the Dark Arts for one year, even though he changed it to just "Dark Arts", Deputy Headmaster of Hogwarts under Severus Snape', 23, 'Arturo Cephalopos', 30, 'Human Pride', '1988-04-18', 46943.10, 5.08, 6.00, '1988-08-05', B'1'),
	('Reginald', 'Cattermole', 'Employee of the Magical Maintenance Department for the Ministry of Magic, impersonated by Ron Weasley', 25, 'Death', 28, 'Venomous Tongue', '1981-08-14', 39864.33, 15.75, 8.00, '1981-11-24', B'1'),
	('Mary', 'Cattermole', 'Muggle-born wife of Reginald Cattermole, saved by Harry Potter from the Muggle-born Registration Commission.', 53, 'Antioch Peverell', 25, 'Blue Phoenix', '1981-08-18', 34176.09, 12.34, 71.00, '1982-04-21', B'1'),
	('Cho', 'Chang', 'Ravenclaw student one year above Harry, Quidditch Seeker, member of Dumbledore`s Army and Harry`s first Love interest', 64, 'Ollivander family', 20, 'Troll Chest', '1984-01-31', 49964.03, 10.83, 53.00, '1984-03-29', B'1'),
	('Penelope', 'Clearwater', 'Ravenclaw prefect and girlfriend of Percy Weasley', 58, 'Mykew Gregorovitch', 17, 'Human Pride', '1983-05-06', 5130.24, 11.04, 42.00, '1983-06-11', B'1'),
	('Michael', 'Corner', 'Ravenclaw student in Harry`s year, member of Dumbledore`s Army', 56, 'Jimmy Kiddell', 15, 'Venomous Tongue', '1985-03-23', 23295.97, 20.97, 35.00, '1985-04-13', B'1'),
	('Vincent', 'Crabbe,', 'Death Eater, father of Vincent Crabbe', 37, 'Arturo Cephalopos', 24, 'Blue Phoenix', '1993-03-30', 35436.82, 26.54, 17.00, '1993-04-07', B'0'),
	('Vincent', 'Crabbe', 'Slytherin student in Harry`s year, son of Death Eater, Slytherin Quidditch team Beater, a member of the Inquisitorial Squad, a friend of Draco Malfoy.', 37, 'Death', 12, 'Troll Chest', '1986-07-18', 8597.40, 20.09, 97.00, '1986-10-18', B'1'),
	('Colin', 'Creevey', 'Muggle-born Gryffindor student one year below Harry, brother of Dennis Creevey, member of Dumbledore`s Army, killed during the Battle of Hogwarts, after sneaking away from the younger evacuated students in the seventh book', 38, 'Antioch Peverell', 15, 'Human Pride', '1991-02-19', 27282.08, 11.82, 76.00, '1992-01-08', B'0'),
	('Dennis', 'Creevey', 'Muggle-born Gryffindor student three years below Harry, brother of Colin Creevey, member of Dumbledore`s Army', 61, 'Ollivander family', 24, 'Venomous Tongue', '1992-07-13', 10649.78, 1.77, 23.00, '1992-09-24', B'0'),
	('Dirk', 'Cresswell', 'Muggle-born Head of the Goblin Liaison Office, went on the run in Deathly Hallows with fellow muggle-born Ted Tonks, Dean Thomas and goblins Gornuk and Griphook.', 65, 'Mykew Gregorovitch', 26, 'Blue Phoenix', '1985-02-14', 11481.54, 25.13, 23.00, '1985-04-22', B'1'),
	('Bartemius', 'Barty', 'Head of the Department of International Magical Cooperation, killed by his son Barty Crouch Jr, Transfigurated into a bone before being buried', 48, 'Jimmy Kiddell', 20, 'Troll Chest', '1992-01-24', 11137.18, 3.48, 74.00, '1992-02-17', B'0'),
	('Bartemius', 'Barty', 'Death Eater, credited with facilitating the return of Lord Voldemort, received a Dementor`s Kiss, used Polyjuice Potion to impersonate Alastor Moody', 69, 'Arturo Cephalopos', 25, 'Human Pride', '1984-08-03', 615.09, 29.72, 36.00, '1984-11-18', B'1'),
	('John', 'Dawlish', '', 30, 'Death', 19, 'Venomous Tongue', '1984-09-14', 45046.67, 9.80, 93.00, '1985-07-11', B'1'),
	('Fleur', 'Delacour', 'French student who participated in the Triwizard Tournament representing Beauxbatons, later wed Bill Weasley.', 49, 'Antioch Peverell', 13, 'Blue Phoenix', '1982-07-24', 33063.59, 23.49, 67.00, '1982-12-08', B'1'),
	('Gabrielle', 'Delacour', 'Younger sister of Fleur Delacour, saved by Harry in the Triwizard Tournament', 66, 'Ollivander family', 14, 'Troll Chest', '1993-11-24', 9488.33, 19.45, 22.00, '1994-06-21', B'0'),
	('Dedalus', 'Diggle', 'Member of the Order of the Phoenix who took the Dursleys into hiding', 39, 'Mykew Gregorovitch', 26, 'Human Pride', '1980-10-10', 45456.26, 15.85, 85.00, '1981-06-02', B'1'),
	('Amos', 'Diggory', 'Works for the Department for the Regulation and Control of Magical Creatures, father of Cedric Diggory', 54, 'Jimmy Kiddell', 17, 'Venomous Tongue', '1985-01-27', 17997.81, 9.87, 41.00, '1985-02-20', B'1'),
	('Cedric', 'Diggory', 'Hufflepuff student two years above Harry, school prefect, Quidditch Seeker and captain, co-winner of the Triwizard Tournament', 19, 'Arturo Cephalopos', 27, 'Blue Phoenix', '1981-01-13', 16443.96, 1.12, 37.00, '1982-01-14', B'1'),
	('Elphias', 'Doge', 'School friend of Albus Dumbledore', 59, 'Death', 24, 'Troll Chest', '1982-07-07', 32356.08, 9.68, 37.00, '1983-06-11', B'1'),
	('Antonin', 'Dolohov', 'Death Eater who killed Fabian Prewett, Gideon Prewett, and Remus Lupin.', 28, 'Antioch Peverell', 23, 'Human Pride', '1991-02-28', 5585.72, 21.16, 36.00, '1991-04-16', B'0'),
	('Aberforth', 'Dumbledore', 'Brother of Albus and Ariana Dumbledore, owner of the Hog`s Head', 49, 'Ollivander family', 11, 'Venomous Tongue', '1991-04-02', 22349.31, 9.72, 81.00, '1992-02-21', B'0'),
	('Albus', 'Dumbledore', 'Hogwarts Headmaster in Harry Potter`s time, Transfiguration professor in Tom Riddle`s time, founder of the Order of the Phoenix.', 50, 'Mykew Gregorovitch', 10, 'Blue Phoenix', '1992-12-18', 21106.66, 15.75, 93.00, '1993-12-07', B'0'),
	('Ariana', 'Dumbledore', '', 27, 'Jimmy Kiddell', 22, 'Troll Chest', '1980-07-26', 27191.21, 11.67, 13.00, '1981-06-12', B'1'),
	('Dudley', 'Dursley', 'Muggle son of Vernon Dursley and Petunia Evans, first cousin of Harry Potter', 15, 'Arturo Cephalopos', 29, 'Human Pride', '1994-10-07', 49767.47, 21.73, 40.00, '1995-04-01', B'0'),
	('Marjorie', 'Marge', 'Muggle sister of Vernon Dursley, breeds bulldogs, her favourite one named Ripper.', 65, 'Death', 25, 'Venomous Tongue', '1994-01-05', 909.41, 13.29, 14.00, '1994-04-14', B'0'),
	('Petunia', 'Dursley', 'Harry`s aunt, the sister of his mother Lily. Married to Vernon Dursley and mother of Dudley Dursley', 27, 'Ollivander family', 12, 'Blue Phoenix', '1994-05-15', 36558.54, 19.54, 57.00, '1994-09-02', B'0'),
	('Vernon', 'Dursley', 'Harry Potter`s muggle uncle, married to his aunt Petunia and father of Dudley Dursley.', 22, 'Mykew Gregorovitch', 22, 'Troll Chest', '1983-07-28', 6498.38, 11.41, 44.00, '1984-01-08', B'1'),
	('Marietta', 'Edgecombe', 'Ravenclaw student one year above Harry, member of Dumbledore`s Army', 17, 'Jimmy Kiddell', 16, 'Human Pride', '1993-06-10', 13938.86, 9.44, 16.00, '1993-07-16', B'0'),
	('Everard', '', 'Former Headmaster of Hogwarts, a particularly famous wizard, whose portrait hangs in many institutions, including the Ministry of Magic', 54, 'Arturo Cephalopos', 30, 'Venomous Tongue', '1984-03-31', 31293.40, 9.00, 77.00, '1984-08-31', B'1'),
	('Arabella', 'Figg', 'Squib neighbour of the Dursleys`, member of the Order of the Phoenix.', 59, 'Death', 28, 'Blue Phoenix', '1986-05-09', 40953.48, 12.53, 71.00, '1986-05-15', B'1'),
	('Argus', 'Filch', 'Squib caretaker of Hogwarts', 67, 'Ollivander family', 10, 'Troll Chest', '1982-07-12', 21519.32, 6.94, 28.00, '1983-01-18', B'1'),
	('Justin', 'Finch-Fletchley', 'Muggle-born Hufflepuff student in Harry`s year, a member of Dumbledore`s Army.', 61, 'Mykew Gregorovitch', 28, 'Human Pride', '1987-04-02', 40613.55, 0.93, 67.00, '1987-04-04', B'1'),
	('Seamus', 'Finnigan', 'Irish Gryffindor student in Harry`s year, a member of Dumbledore`s Army best friend of Dean Thomas.', 35, 'Jimmy Kiddell', 25, 'Venomous Tongue', '1993-12-26', 43680.93, 30.44, 66.00, '1994-07-08', B'0'),
	('Marcus', 'Flint', 'Slytherin sixth year Quidditch captain', 57, 'Arturo Cephalopos', 30, 'Blue Phoenix', '1988-02-06', 346.16, 30.17, 20.00, '1988-07-31', B'1'),
	('Nicolas', 'Flamel', 'alchemist, the only known creator of the Philosopher`s Stone.', 42, 'Death', 27, 'Troll Chest', '1990-01-02', 31483.33, 23.72, 26.00, '1990-08-27', B'0'),
	('Mundungus', 'Fletcher', 'Common thief and shifty member of the Order of the Phoenix', 73, 'Antioch Peverell', 29, 'Human Pride', '1993-11-02', 42130.06, 17.24, 68.00, '1994-03-21', B'0'),
	('Filius', 'Flitwick', 'Charms professor at Hogwarts and Head of Ravenclaw', 34, 'Ollivander family', 28, 'Venomous Tongue', '1990-07-14', 33656.19, 21.72, 24.00, '1990-08-17', B'0'),
	('Cornelius', 'Fudge', 'Minister for Magic in the first five books, sacked when he denied Lord Voldemort`s return for a year.', 15, 'Mykew Gregorovitch', 22, 'Blue Phoenix', '1990-03-08', 48394.70, 1.00, 46.00, '1991-02-06', B'0'),
	('Marvolo', 'Gaunt', 'Pure-blood father of Merope and Morfin Gaunt, grandfather of Tom Marvolo Riddle.', 41, 'Antioch Peverell', 14, 'Troll Chest', '1981-04-12', 22895.49, 0.15, 89.00, '1981-09-20', B'1'),
	('Merope', 'Gaunt', 'Daughter of Marvolo Gaunt, sister of Morfin Gaunt, wife of Tom Riddle Sr, mother of Tom Marvolo Riddle/Lord Voldemort, died after childbirth, named for Merope, one of the Pleiades, who married a mortal[1]', 15, 'Ollivander family', 25, 'Human Pride', '1992-03-13', 20809.21, 18.62, 19.00, '1993-02-08', B'0'),
	('Morfin', 'Gaunt', 'Son of Marvolo Gaunt, brother of Merope Gaunt, uncle of Tom Marvolo Riddle, framed by his nephew for Muggle killings.', 45, 'Mykew Gregorovitch', 25, 'Venomous Tongue', '1994-05-03', 33175.63, 20.71, 14.00, '1995-03-24', B'0'),
	('Anthony', 'Goldstein', 'Ravenclaw student in Harry`s year, member of Dumbledore`s Army', 34, 'Jimmy Kiddell', 26, 'Blue Phoenix', '1980-05-11', 5264.16, 29.66, 4.00, '1980-05-22', B'1'),
	('Goyle', 'Sr', 'Death Eater, father of Gregory Goyle', 65, 'Arturo Cephalopos', 31, 'Troll Chest', '1981-05-01', 42520.28, 4.72, 75.00, '1982-03-30', B'1'),
	('Gregory', 'Goyle', 'Slytherin student in Harry`s year, Slytherin Quidditch Beater, a member of the Inquisitorial Squad.', 51, 'Death', 25, 'Human Pride', '1983-04-06', 22014.91, 21.61, 33.00, '1984-02-20', B'1'),
	('Hermione', 'Granger', 'Muggle-born Gryffindor student in Harry`s year, one of Harry`s best friends, founder of Dumbledore`s Army, Gryffindor Prefect', 18, 'Antioch Peverell', 16, 'Venomous Tongue', '1980-11-17', 20232.87, 17.54, 27.00, '1981-01-13', B'1'),
	('Gregorovitch', '', 'highly regarded East European wand-maker.', 28, 'Death', 22, 'Blue Phoenix', '1992-07-18', 44377.51, 22.05, 80.00, '1992-09-01', B'0'),
	('Fenrir', 'Greyback', 'Werewolf, infected Remus Lupin, maimed Bill Weasley and wounded Lavender Brown.', 72, 'Antioch Peverell', 11, 'Troll Chest', '1991-09-05', 15747.72, 18.22, 94.00, '1992-05-21', B'0'),
	('Gellert', 'Grindelwald', 'Dark Wizard, friend, and later rival, of Albus Dumbledore who defeated him in the 1940s.', 52, 'Ollivander family', 20, 'Human Pride', '1985-04-16', 12681.80, 14.28, 19.00, '1985-12-27', B'1'),
	('Wilhelmina', 'Grubbly-Plank', 'Substitute Care of Magical Creatures professor during Harry`s fourth year', 29, 'Mykew Gregorovitch', 18, 'Venomous Tongue', '1980-08-19', 21263.21, 5.66, 76.00, '1980-08-21', B'1'),
	('Godric', 'Gryffindor', 'One of the four founders of Hogwarts', 24, 'Jimmy Kiddell', 16, 'Blue Phoenix', '1991-06-06', 30425.03, 22.28, 89.00, '1991-09-13', B'0'),
	('Rubeus', 'Hagrid', 'Half-giant keeper of Keys and Grounds at Hogwarts, Care of Magical Creatures professor starting from Harry`s third year, a member of the Order of the Phoenix. Once a Hogwarts student, Hagrid was expelled in his third year.', 15, 'Death', 14, 'Troll Chest', '1983-02-04', 29087.26, 19.94, 94.00, '1983-02-18', B'1'),
	('Rolanda', 'Hooch', 'Hogwarts flying instructor, Quidditch referee', 38, 'Antioch Peverell', 29, 'Human Pride', '1989-05-05', 30985.51, 8.64, 33.00, '1989-07-03', B'0'),
	('Mafalda', 'Hopkirk', 'Witch who works in the Ministry of Magic, impersonated by Hermione Granger in Deathly Hallows.', 63, 'Ollivander family', 23, 'Venomous Tongue', '1980-08-27', 39189.95, 12.73, 46.00, '1981-07-26', B'1'),
	('Helga', 'Hufflepuff', 'One of the four founders of Hogwarts, ancestor of Hepzibah Smith', 72, 'Mykew Gregorovitch', 16, 'Blue Phoenix', '1987-02-12', 25971.83, 23.85, 74.00, '1987-06-02', B'1'),
	('Angelina', 'Johnson', 'Gryffindor student two years above Harry, Quidditch Chaser and later captain', 70, 'Jimmy Kiddell', 21, 'Troll Chest', '1984-04-04', 17479.62, 3.20, 39.00, '1984-08-25', B'1'),
	('Lee', 'Jordan', 'Gryffindor student two years above Harry, Hogwarts Quidditch commentator, good friend of Fred and George Weasley at Hogwarts', 67, 'Arturo Cephalopos', 26, 'Human Pride', '1994-07-28', 11937.54, 17.30, 39.00, '1994-12-23', B'0'),
	('Bertha', 'Jorkins', '', 58, 'Death', 11, 'Venomous Tongue', '1987-07-25', 42482.75, 30.46, 51.00, '1988-03-20', B'1'),
	('Igor', 'Karkaroff', 'Reformed Death Eater, Headmaster of Durmstrang.', 31, 'Mykew Gregorovitch', 25, 'Blue Phoenix', '1986-12-30', 21847.43, 12.66, 88.00, '1987-09-24', B'1'),
	('Viktor', 'Krum', 'Durmstrang student, Bulgarian Quidditch Seeker, participated in the Triwizard Tournament.', 37, 'Jimmy Kiddell', 28, 'Troll Chest', '1980-12-28', 31596.15, 21.29, 35.00, '1981-09-02', B'1'),
	('Bellatrix', 'Lestrange', 'Death Eater, sister of Narcissa Malfoy and Andromeda Tonks, cousin of Sirius and Regulus Black, she tortured Frank and Alice Longbottom into insanity.', 14, 'Arturo Cephalopos', 12, 'Human Pride', '1983-05-09', 37635.01, 5.85, 43.00, '1983-08-21', B'1'),
	('Rabastan', 'Lestrange', 'Death Eater, brother of Rodolphus Lestrange', 55, 'Death', 29, 'Venomous Tongue', '1984-10-22', 39468.45, 23.33, 69.00, '1985-04-23', B'1'),
	('Rodolphus', 'Lestrange', 'Death Eater, brother of Rabastan Lestrange, husband of Bellatrix Lestrange', 71, 'Antioch Peverell', 23, 'Blue Phoenix', '1982-03-26', 1302.18, 0.02, 75.00, '1982-08-25', B'1'),
	('Gilderoy', 'Lockhart', 'Fraudulent celebrity author, Defence Against the Dark Arts teacher.', 60, 'Death', 18, 'Troll Chest', '1980-10-19', 15745.69, 23.18, 16.00, '1981-07-06', B'1'),
	('Alice', 'Longbottom', 'Wife of Frank Longbottom, mother of Neville Longbottom, member of the original Order of the Phoenix, Auror, tortured into insanity by Bellatrix Lestrange along with her husband', 40, 'Antioch Peverell', 17, 'Human Pride', '1985-01-26', 4817.78, 29.58, 79.00, '1985-02-10', B'1'),
	('Augusta', 'Longbottom', 'Mother of Frank Longbottom and grandmother of Neville Longbottom', 29, 'Ollivander family', 22, 'Venomous Tongue', '1982-08-17', 28036.29, 16.55, 87.00, '1983-07-27', B'1'),
	('Frank', 'Longbottom', 'Father of Neville Longbottom, a member of the original Order of the Phoenix, Auror, tortured into insanity by Bellatrix Lestrange along with his wife.', 24, 'Mykew Gregorovitch', 31, 'Blue Phoenix', '1991-06-23', 31439.10, 11.55, 57.00, '1991-09-09', B'0'),
	('Neville', 'Longbottom', 'Gryffindor student in Harry`s year, a member of Dumbledore`s Army.', 47, 'Jimmy Kiddell', 20, 'Troll Chest', '1992-07-19', 1369.52, 21.04, 1.00, '1993-05-13', B'0'),
	('Luna', 'Lovegood', 'Ravenclaw student one year below Harry, a member of Dumbledore`s Army.', 14, 'Arturo Cephalopos', 21, 'Human Pride', '1986-12-21', 9014.64, 2.83, 24.00, '1987-10-29', B'1'),
	('Xenophilius', 'Lovegood', 'Father of Luna Lovegood, and editor of The Quibbler.', 25, 'Death', 16, 'Venomous Tongue', '1992-08-09', 5908.36, 6.99, 1.00, '1992-11-19', B'0'),
	('Remus', 'Lupin', 'Gryffindor student before Harry`s time, Marauder, a friend of James Potter, werewolf, Professor of Defence Against the Dark Arts in Harry`s third year, a member of the Order of the Phoenix.', 19, 'Death', 11, 'Blue Phoenix', '1982-05-08', 17821.66, 19.64, 45.00, '1982-06-04', B'1'),
	('Walden', 'Macnair', 'The Committee of Disposal of Dangerous Creatures`s executioner, also a Death-Eater', 48, 'Antioch Peverell', 29, 'Troll Chest', '1986-09-22', 23216.19, 29.39, 46.00, '1986-11-01', B'1'),
	('Draco', 'Malfoy', 'Slytherin student in Harry`s year, Slytherin Quidditch Seeker, school prefect, member of the Inquisitorial Squad, Death Eater', 18, 'Ollivander family', 14, 'Human Pride', '1989-12-02', 33253.04, 8.37, 7.00, '1990-05-07', B'0'),
	('Lucius', 'Malfoy', 'Draco Malfoy`s father, an influential Death-Eater, and, early in the series, governor of Hogwarts', 25, 'Mykew Gregorovitch', 22, 'Venomous Tongue', '1981-07-29', 36572.61, 2.45, 5.00, '1981-11-19', B'1'),
	('Narcissa', 'Malfoy', 'Lucius Malfoy`s wife and Draco Malfoy\`s mother, sister of Bellatrix Lestrange.', 17, 'Jimmy Kiddell', 18, 'Blue Phoenix', '1988-06-16', 1169.86, 25.09, 98.00, '1988-07-17', B'1'),
	('Madam', 'Malkin', 'Clothes shop owner at Diagon Alley', 23, 'Arturo Cephalopos', 15, 'Troll Chest', '1985-07-17', 40137.28, 8.17, 45.00, '1986-06-13', B'1'),
	('Olympe', 'Maxime', 'Half-giantess, Headmistress of Beauxbatons', 56, 'Death', 22, 'Human Pride', '1986-02-22', 27473.95, 22.31, 39.00, '1986-05-22', B'1'),
	('Ernie', 'Macmillan', 'Hufflepuff student in Harry`s year, school prefect, member of Dumbledore`s Army', 63, 'Arturo Cephalopos', 13, 'Venomous Tongue', '1989-04-15', 18960.62, 13.15, 22.00, '1989-12-12', B'0'),
	('Minerva', 'McGonagall', 'Hogwarts Transfiguration professor, Head of Gryffindor House, Deputy Headmistress of Hogwarts, a member of the Order of the Phoenix.', 29, 'Death', 16, 'Blue Phoenix', '1988-07-08', 7298.35, 15.19, 39.00, '1988-12-24', B'1'),
	('Alastor', 'Mad-Eye', 'Retired Auror, member of the Order of the Phoenix, impersonated by Barty Crouch Jr. in `The Goblet of Fire`', 27, 'Mykew Gregorovitch', 21, 'Troll Chest', '1987-02-17', 8294.06, 18.27, 90.00, '1988-01-08', B'1'),
	('Theodore', 'Nott', 'Slytherin student in the same year as Harry Potter. Nott is one of the few students who can see Thestrals, suggesting that he has witnessed a death at some point. His father is a Death Eater and described as an elderly widower.', 17, 'Jimmy Kiddell', 26, 'Human Pride', '1982-01-20', 49041.09, 26.22, 15.00, '1982-04-14', B'1'),
	('Garrick', 'Ollivander', 'Wandmaker, owner of Ollivanders shop.', 72, 'Arturo Cephalopos', 27, 'Venomous Tongue', '1994-07-01', 41627.25, 30.61, 22.00, '1994-10-11', B'0'),
	('Pansy', 'Parkinson', 'Slytherin student in Harry`s year, school prefect, a member of the Inquisitorial Squad, Draco Malfoy`s girlfriend for some time.', 35, 'Death', 21, 'Blue Phoenix', '1994-01-20', 11941.54, 29.19, 71.00, '1994-05-29', B'0'),
	('Padma', 'Patil', 'Ravenclaw student in Harry`s year, identical twin sister of Gryffindor Parvati Patil, a member of Dumbledore`s Army.', 37, 'Antioch Peverell', 22, 'Troll Chest', '1980-05-09', 26117.57, 9.05, 47.00, '1981-03-30', B'1'),
	('Parvati', 'Patil', 'Gryffindor student in Harry`s year, identical twin sister of Ravenclaw Padma Patil, a member of Dumbledore`s Army.', 55, 'Death', 25, 'Human Pride', '1990-01-12', 11798.51, 1.00, 71.00, '1990-03-19', B'0'),
	('Peter', 'Pettigrew', 'Former school friend of James Potter, Sirius Black and Remus Lupin. Betrays James and Lily Potter. Death Eater, an unregistered animagus, Pettigrew is first introduced as a rat known as Scabbers.', 41, 'Jimmy Kiddell', 29, 'Venomous Tongue', '1993-03-12', 43424.70, 19.06, 87.00, '1993-07-06', B'0'),
	('Antioch', 'Peverell', 'Original owner of The Elder Wand in The Tale of the Three Brothers.', 49, 'Arturo Cephalopos', 26, 'Blue Phoenix', '1989-01-19', 36394.90, 20.56, 18.00, '1989-08-09', B'0'),
	('Cadmus', 'Peverell', 'Original owner of The Resurrection Stone in The Tale of the Three Brothers', 36, 'Death', 20, 'Troll Chest', '1983-12-16', 22327.50, 30.46, 82.00, '1984-03-20', B'1'),
	('Ignotus', 'Peverell', 'Original owner of The Invisibility Cloak in The Tale of the Three Brothers.', 43, 'Ollivander family', 29, 'Human Pride', '1983-06-10', 35261.39, 9.39, 68.00, '1983-10-05', B'1'),
	('Irma', 'Pince', 'Hogwarts librarian', 19, 'Mykew Gregorovitch', 17, 'Venomous Tongue', '1984-05-03', 12766.45, 17.02, 85.00, '1984-08-05', B'1'),
	('Sturgis', 'Podmore', 'Member of the Order of the Phoenix, imprisoned in Azkaban', 64, 'Jimmy Kiddell', 24, 'Blue Phoenix', '1980-04-07', 22485.06, 15.05, 67.00, '1981-03-22', B'1'),
	('Poppy', 'Pomfrey', 'Hogwarts school nurse', 32, 'Arturo Cephalopos', 23, 'Troll Chest', '1988-04-19', 27957.52, 6.77, 68.00, '1988-06-12', B'1'),
	('Harry', 'Potter', 'Main character of the series, son of James Potter and Lily Evans, Gryffindor student, Gryffindor Quidditch Seeker and captain, leader of Dumbledore`s Army.', 68, 'Death', 18, 'Human Pride', '1986-09-21', 44889.88, 23.09, 10.00, '1986-11-15', B'1'),
	('James', 'Potter', 'Harry Potter`s father, a member of the Order of the Phoenix, murdered by Lord Voldemort before the series begins.', 47, 'Ollivander family', 31, 'Venomous Tongue', '1993-06-16', 27296.66, 1.22, 86.00, '1993-11-16', B'0'),
	('Lily', 'Potter', 'Harry Potter`s mother, a member of the Order of the Phoenix, murdered by Lord Voldemort before the series begins.', 28, 'Antioch Peverell', 13, 'Blue Phoenix', '1984-02-27', 21972.24, 26.11, 49.00, '1984-06-16', B'1'),
	('Ernest', 'Ernie', '(fl. 1993-1997), also called Ern by Stanley Shunpike, was the driver of the Knight Bus.', 58, 'Ollivander family', 20, 'Troll Chest', '1991-11-05', 11948.37, 16.85, 99.00, '1992-07-10', B'0'),
	('Quirinus', 'Quirrell', 'Defence Against the Dark Arts professor in Harry`s first year, possessed by Lord Voldemort in Philosopher`s Stone.', 34, 'Mykew Gregorovitch', 15, 'Human Pride', '1992-10-17', 13212.49, 5.67, 55.00, '1992-12-26', B'0'),
	('Helena', 'Ravenclaw/The', 'Daughter of Rowena Ravenclaw, stole her mother`s diadem and hid it, killed by the Bloody Baron and became Ravenclaw`s house ghost.', 62, 'Jimmy Kiddell', 18, 'Venomous Tongue', '1985-10-13', 1238.51, 10.17, 57.00, '1985-12-30', B'1'),
	('Rowena', 'Ravenclaw', 'Co-founder of Hogwarts, mother of Helena Ravenclaw', 40, 'Arturo Cephalopos', 28, 'Blue Phoenix', '1994-10-16', 16236.00, 11.11, 26.00, '1995-04-25', B'0'),
	('Mary', 'Riddle', 'Muggle wife of Thomas Riddle, mother of Tom Riddle Sr, mother-in-law of Merope Gaunt, grandmother of Tom Marvolo Riddle/Lord Voldemort, killed by her grandson', 24, 'Death', 12, 'Troll Chest', '1982-06-14', 43375.01, 23.97, 82.00, '1982-08-30', B'1'),
	('Thomas', 'Riddle', 'Muggle husband of Mary Riddle, father of Tom Riddle Sr, grandfather of Tom Marvolo Riddle/Lord Voldemort, killed by his grandson.', 36, 'Arturo Cephalopos', 28, 'Human Pride', '1989-05-14', 24304.57, 21.47, 86.00, '1989-12-04', B'0'),
	('Tom', 'Riddle', 'Muggle husband of Merope Gaunt, father of Tom Marvolo Riddle/Lord Voldemort, son of Thomas and Mary Riddle, killed by his son', 26, 'Death', 23, 'Venomous Tongue', '1990-04-22', 44456.65, 25.24, 76.00, '1990-08-03', B'0'),
	('Tom', 'Marvolo', 'see Lord Voldemort', 33, 'Mykew Gregorovitch', 30, 'Blue Phoenix', '1986-05-20', 23897.12, 29.66, 23.00, '1987-01-27', B'1'),
	('Demelza', 'Robins', '', 45, 'Mykew Gregorovitch', 24, 'Troll Chest', '1988-09-19', 8523.42, 5.34, 40.00, '1989-02-21', B'0'),
	('Augustus', 'Rookwood', 'Death Eater, spy working in the Department of Mysteries', 26, 'Death', 28, 'Human Pride', '1994-12-06', 43137.27, 13.09, 61.00, '1995-01-01', B'0'),
	('Albert', 'Runcorn', '', 23, 'Jimmy Kiddell', 12, 'Venomous Tongue', '1982-12-06', 47140.32, 3.77, 35.00, '1983-01-13', B'1'),
	('Scabior', '', 'Snatcher who captures Harry Potter, Ron Weasley and Hermione Granger in Deathly Hallows.', 23, 'Arturo Cephalopos', 21, 'Blue Phoenix', '1992-06-06', 25342.73, 14.88, 27.00, '1993-05-07', B'0'),
	('Newt', 'Scamander', 'Author of Fantastic Beasts and Where to Find Them, among other books. Headmaster and, Hufflepuff student at Hogwarts.', 49, 'Death', 24, 'Troll Chest', '1988-02-08', 36247.69, 28.85, 22.00, '1988-12-31', B'1'),
	('Rufus', 'Scrimgeour', 'Head of the Auror Office, replaces Cornelius Fudge as Minister for Magic.', 61, 'Ollivander family', 13, 'Human Pride', '1987-07-31', 39764.02, 25.14, 10.00, '1988-04-03', B'1'),
	('Kingsley', 'Shacklebolt', 'Auror, replaces Pius Thicknesse as Minister for Magic, member of the Order of the Phoenix', 33, 'Mykew Gregorovitch', 26, 'Venomous Tongue', '1992-03-06', 31218.37, 8.53, 42.00, '1993-01-30', B'0'),
	('Stan', 'Shunpike', 'Conductor of the Knight Bus, later jailed in Azkaban on suspicions of being a death-eater.', 30, 'Jimmy Kiddell', 22, 'Blue Phoenix', '1992-09-21', 19775.78, 0.14, 61.00, '1992-12-07', B'0'),
	('Aurora', 'Sinistra', 'Professor and member of the Astronomy Department at Hogwarts, a witch with dark skin, hair, and eyes.', 47, 'Arturo Cephalopos', 22, 'Troll Chest', '1991-06-28', 17257.17, 30.67, 45.00, '1992-01-25', B'0'),
	('Rita', 'Skeeter', 'Reporter for the Daily Prophet, author of The Life and Lies of Albus Dumbledore, unregistered animagus.', 38, 'Death', 13, 'Human Pride', '1990-04-18', 22876.54, 17.02, 3.00, '1990-07-06', B'0'),
	('Horace', 'Slughorn', 'Former Potions professor at Hogwarts and Head of Slytherin House who taught Tom Marvolo Riddle and returns to Hogwarts in Harry`s sixth year.', 32, 'Ollivander family', 10, 'Venomous Tongue', '1986-10-30', 19165.02, 7.95, 76.00, '1987-09-27', B'1'),
	('Salazar', 'Slytherin', 'Co-founder of Hogwarts, Parseltongue, ancestor of the Gaunt family and Lord Voldemort.', 59, 'Antioch Peverell', 28, 'Blue Phoenix', '1980-10-26', 1168.22, 26.55, 71.00, '1981-01-30', B'1'),
	('Hepzibah', 'Smith', 'Elderly, wealthy antique collector, descendant of Helga Hufflepuff, murdered and robbed by Tom Marvolo Riddle', 30, 'Ollivander family', 12, 'Troll Chest', '1983-05-25', 33665.13, 7.98, 21.00, '1983-08-17', B'1'),
	('Zacharias', 'Smith', 'Hufflepuff student, a member of Dumbledore`s Army.', 39, 'Antioch Peverell', 15, 'Human Pride', '1985-12-01', 45543.40, 24.78, 98.00, '1986-10-29', B'1'),
	('Severus', 'Snape', 'Hogwarts, Potions and later Defence Against the Dark Arts professor, Head of Slytherin House, a member of both the Death Eaters and the Order of the Phoenix.', 53, 'Mykew Gregorovitch', 15, 'Venomous Tongue', '1992-11-06', 17820.90, 16.53, 38.00, '1992-12-20', B'0'),
	('Alicia', 'Spinnet', 'Chaser on the Gryffindor Quidditch team, two years above Harry Potter at Hogwarts. Member of Dumbledore`s Army.', 65, 'Jimmy Kiddell', 16, 'Blue Phoenix', '1980-02-06', 6269.39, 3.66, 77.00, '1980-03-04', B'1'),
	('Pomona', 'Sprout', 'Hogwarts Herbology professor, Head of Hufflepuff House.', 46, 'Arturo Cephalopos', 24, 'Troll Chest', '1993-06-10', 16789.73, 30.80, 58.00, '1993-10-07', B'0'),
	('Pius', 'Thicknesse', 'Minister for Magic while under the Imperius Curse, later replaced by Kingsley Shacklebolt.', 47, 'Death', 24, 'Human Pride', '1982-06-01', 8359.46, 26.64, 59.00, '1983-01-04', B'1'),
	('Dean', 'Thomas', 'Gryffindor student in Harry`s year, a member of Dumbledore`s Army, briefly Ginny Weasley`s boyfriend, Gryffindor Quidditch Chaser.', 69, 'Antioch Peverell', 18, 'Venomous Tongue', '1992-12-04', 6579.08, 7.43, 69.00, '1993-04-09', B'0'),
	('Andromeda', 'Tonks', 'Sister of Bellatrix Lestrange and Narcissa Malfoy, disowned by her family for marrying Muggle-born Ted Tonks, mother of Nymphadora Tonks.', 68, 'Death', 28, 'Blue Phoenix', '1993-02-18', 30024.64, 8.80, 36.00, '1993-06-14', B'0'),
	('Nymphadora', 'Tonks', 'Daughter of Ted and Andromeda Tonks, Auror and member of the Order of the Phoenix. She marries Remus Lupin, and become the mother of Teddy Lupin.', 18, 'Jimmy Kiddell', 13, 'Troll Chest', '1982-11-25', 16724.98, 22.83, 37.00, '1983-09-21', B'1'),
	('Ted', 'Tonks', 'Muggle-born husband of Andromeda and father of Nymphadora Tonks.', 19, 'Arturo Cephalopos', 13, 'Human Pride', '1984-03-07', 39096.67, 25.20, 82.00, '1984-10-04', B'1'),
	('Travers', '', '', 53, 'Death', 24, 'Venomous Tongue', '1984-01-05', 25085.58, 1.95, 91.00, '1984-05-27', B'1'),
	('Sybill', 'Patricia', 'Hogwarts Divination professor, predicted the prophecy that prompted Lord Voldemort to go after the Potters', 25, 'Ollivander family', 17, 'Blue Phoenix', '1994-07-05', 15237.30, 7.31, 21.00, '1994-07-21', B'0'),
	('Dolores', 'Jane', 'Senior Undersecretary to the Minister for Magic, Defence Against the Dark Arts professor, Hogwarts High Inquisitor, Headmistress of Hogwarts, who enthusiastically joins in the persecution of half-bloods under Voldermort.', 34, 'Mykew Gregorovitch', 30, 'Troll Chest', '1982-09-25', 10628.58, 12.08, 50.00, '1983-01-22', B'1'),
	('Emmeline', 'Vance', 'a member of the party that brings Harry to Grimmauld Place, a member of the Order of the Phoenix. Described as "A stately looking witch in an emerald green shawl".', 57, 'Jimmy Kiddell', 25, 'Human Pride', '1992-10-30', 34993.10, 29.94, 82.00, '1992-11-03', B'0'),
	('Romilda', 'Vane', 'Hogwarts student who tried to romance Harry with Chocolate Cauldrons containing a love potion from Weasley`s Wizard Wheezes', 17, 'Mykew Gregorovitch', 16, 'Venomous Tongue', '1983-09-06', 26267.34, 16.63, 100.00, '1984-04-15', B'1'),
	('Septima', 'Vector', 'Arithmancy professor at Hogwarts.', 43, 'Arturo Cephalopos', 26, 'Blue Phoenix', '1981-01-23', 6146.94, 6.57, 66.00, '1982-01-22', B'1'),
	('Lord', 'Voldemort', 'The villain of the series, the murderer of Harry Potter`s parents and many others in his quest for immortality and absolute power.', 25, 'Death', 31, 'Troll Chest', '1989-04-28', 38085.84, 22.53, 88.00, '1989-08-01', B'0'),
	('Arthur', 'Weasley', 'Muggle-obsessed Ministry of Magic employee. Husband of Molly Weasley, father of Bill, Charlie, Percy, Fred, George, Ron, and Ginny Weasley, member of the Order of the Phoenix', 65, 'Antioch Peverell', 26, 'Human Pride', '1989-09-05', 6647.70, 15.82, 23.00, '1989-09-28', B'0'),
	('Bill', 'Weasley', 'Oldest son of Arthur and Molly Weasley, Gringotts employee.', 51, 'Death', 30, 'Venomous Tongue', '1988-04-01', 11346.57, 2.63, 98.00, '1988-08-03', B'1'),
	('Charlie', 'Weasley', 'Second son of Arthur and Molly Weasley, and a member of the Order of the Phoenix, works with dragons in Romania.', 21, 'Jimmy Kiddell', 16, 'Blue Phoenix', '1988-11-14', 7831.46, 26.31, 20.00, '1989-07-26', B'0'),
	('Fred', 'Weasley', 'Son of Arthur and Molly Weasley and identical twin brother of George Weasley, a member of Dumbledore`s Army, Gryffindor Quidditch Beater, co-owner of Weasleys` Wizard Wheezes, killed in an explosion caused by Augustus Rookwood in the Battle of Hogwarts.', 48, 'Arturo Cephalopos', 18, 'Troll Chest', '1992-02-22', 23860.37, 28.37, 39.00, '1992-05-06', B'0'),
	('George', 'Weasley', 'Son of Arthur and Molly Weasley and identical twin brother of Fred Weasley, member of Dumbledore`s Army, Gryffindor Quidditch Beater, co-owner of Weasleys` Wizard Wheezes, marries Angelina Johnson', 48, 'Death', 13, 'Human Pride', '1994-11-16', 16556.88, 2.82, 19.00, '1994-12-13', B'0'),
	('Ginny', 'Weasley', 'Only daughter and youngest child of Arthur and Molly Weasley, Gryffindor student one year under Harry, Gryffindor Quidditch Seeker and Chaser, a member of Dumbledore`s Army.', 47, 'Ollivander family', 12, 'Venomous Tongue', '1990-03-21', 9347.41, 28.27, 78.00, '1990-03-31', B'0'),
	('Molly', 'Weasley', 'Wife of Arthur Weasley, mother of Bill, Charlie, Percy, Fred, George, Ron and Ginny Weasley, a member of the Order of the Phoenix.', 14, 'Mykew Gregorovitch', 18, 'Blue Phoenix', '1992-02-03', 39815.04, 9.43, 53.00, '1992-08-30', B'0'),
	('Percy', 'Weasley', 'Third son of Arthur and Molly Weasley, Gryffindor prefect and Head Boy then Ministry of Magic employee, long estranged from his family before joining them against the Death Eaters in Deathly Hallows,', 54, 'Arturo Cephalopos', 14, 'Troll Chest', '1985-04-24', 25537.20, 3.05, 12.00, '1985-05-16', B'1'),
	('Ron', 'Weasley', 'Harry`s close friend, youngest Son of Arthur and Molly Weasley, Gryffindor Quidditch Keeper, school prefect, a member of Dumbledore`s Army.', 51, 'Death', 26, 'Human Pride', '1985-07-16', 4085.37, 25.25, 32.00, '1985-09-29', B'1'),
	('Oliver', 'Wood', 'Hogwarts student, Gryffindor Quidditch Keeper and captain.', 26, 'Ollivander family', 10, 'Venomous Tongue', '1985-06-29', 40902.03, 10.82, 68.00, '1985-08-01', B'1'),
	('Kennilworthy', 'Whisp', 'author of "Quidditch Through the Ages"', 57, 'Mykew Gregorovitch', 31, 'Blue Phoenix', '1989-03-11', 17335.62, 21.72, 7.00, '1989-10-09', B'0'),
	('Yaxley', '', 'Death Eater, Head of Magical Law Enforcement under Voldemort`s regime.', 38, 'Jimmy Kiddell', 16, 'Troll Chest', '1988-01-03', 26638.92, 7.11, 74.00, '1988-02-21', B'1'),
	('Blaise', 'Zabini', 'Slytherin student in Harry`s year, friends with Draco Malfoy.', 16, 'Mykew Gregorovitch', 11, 'Human Pride', '1990-03-28', 3049.06, 6.27, 61.00, '1990-07-04', B'0');


	SELECT
	COUNT(*)
FROM
	wizard_deposits;

SELECT
	SUM(deposit_amount)
FROM
	wizard_deposits;	


SELECT
	ROUND(AVG(magic_wand_size), 3)
FROM
	wizard_deposits;	

SELECT
	MIN(deposit_charge)
FROM
	wizard_deposits;


SELECT
	MAX(age)
FROM
	wizard_deposits;	


SELECT 
	deposit_group,
	SUM(deposit_interest) AS deposit_interest
FROM
	wizard_deposits
GROUP BY
	deposit_group
ORDER BY
	deposit_interest DESC;	

SELECT
	magic_wand_creator,
	MIN(magic_wand_size) AS minimum_wand_size
FROM 
	wizard_deposits
GROUP BY 
	magic_wand_creator
ORDER BY
	minimum_wand_size ASC
LIMIT 5;	



SELECT
	deposit_group,
	is_deposit_expired,
	FLOOR(AVG(deposit_interest)) AS deposit_interest
FROM
	wizard_deposits
WHERE
	deposit_start_date > '1985-01-01'
GROUP BY
	deposit_group,
	is_deposit_expired
ORDER BY
	deposit_group DESC,
	is_deposit_expired ASC;

	SELECT
	last_name,
	COUNT(notes) AS notes_with_dumbledore
FROM
	wizard_deposits
WHERE 
	notes LIKE '%Dumbledore%'
GROUP BY
	last_name

	CREATE VIEW 
	view_wizard_deposits_with_expiration_date_before_1983_08_17
AS
SELECT
	CONCAT(first_name, ' ', last_name) AS wizard_name,
	deposit_start_date AS start_date,
	deposit_expiration_date AS expiration_date,
	deposit_amount AS amount
FROM
	wizard_deposits
WHERE
	deposit_expiration_date <= '1983-08-17'
GROUP BY
	wizard_name,
	start_date,
	expiration_date,
	amount
ORDER BY
	expiration_date ASC;


	SELECT
	magic_wand_creator,
	MAX(deposit_amount) AS max_deposit_amount
FROM
	wizard_deposits
GROUP BY
	magic_wand_creator
HAVING
	MAX(deposit_amount) < 20000 
		OR
	MAX(deposit_amount) > 40000
ORDER BY
	max_deposit_amount DESC
LIMIT 3;



SELECT
	CASE
		WHEN age BETWEEN 0 AND 10 THEN '[0-10]'
		WHEN age BETWEEN 11 AND 20 THEN '[11-20]'
		WHEN age BETWEEN 21 AND 30 THEN '[21-30]'
		WHEN age BETWEEN 31 AND 40 THEN '[31-40]'
		WHEN age BETWEEN 41 AND 50 THEN '[41-50]'
		WHEN age BETWEEN 51 AND 60 THEN '[51-60]'
		ELSE '[61+]'
	END AS age_group,
	COUNT(*)
FROM 
	wizard_deposits
GROUP BY
	age_group
ORDER BY
	age_group ASC;


CREATE DATABASE data_aggregation_softuni_management_db

CREATE TABLE IF NOT EXISTS departments (
  "id" SERIAL PRIMARY KEY,
  department_name VARCHAR(150) NOT NULL,
  manager_id INT NOT NULL,
  CONSTRAINT departments_manager_id_check CHECK (manager_id > 0)
);


INSERT INTO departments (
	department_name, manager_id
) 
VALUES
	('Engineering', 12),
	('Tool Design', 4),
	('Sales', 273),
	('Marketing', 46),
	('Purchasing', 6),
	('Research and Development', 42),
	('Production', 148),
	('Production Control', 21),
	('Human Resources', 30),
	('Finance', 3),
	('Information Services', 42),
	('Document Control', 90),
	('Quality Assurance', 274),
	('Facilities and Maintenance', 218),
	('Shipping and Receiving', 85),
	('Executive', 109);
	
	
CREATE TABLE IF NOT EXISTS employees (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL, 
  job_title VARCHAR(80) NOT NULL,
  department_id INT NOT NULL,
  manager_id INT,
  hire_date DATE DEFAULT NULL,
  salary NUMERIC(15, 3),
  address_id INT NOT NULL,
  CONSTRAINT employees_department_id_check CHECK (department_id > 0),
  CONSTRAINT employees_manager_id_check CHECK (manager_id > 0),
  CONSTRAINT employees_salary_check CHECK (salary >= 0),
  CONSTRAINT employees_address_id_check CHECK (address_id > 0)
);


INSERT INTO employees (
	first_name, last_name, job_title, department_id, manager_id, hire_date, salary, address_id
) 
VALUES
	('Guy', 'Gilbert', 'Production Technician', 7, 16, '1998-07-31 00:00:00.000000', 12500.0000, 166),
	('Kevin', 'Brown', 'Marketing Assistant', 4, 6, '1999-02-26 00:00:00.000000', 13500.0000, 102),
	('Roberto', 'Tamburello', 'Engineering Manager', 1, 12, '1999-12-12 00:00:00.000000', 43300.0000, 193),
	('Rob', 'Walters', 'Senior Tool Designer', 2, 3, '2000-01-05 00:00:00.000000', 29800.0000, 155),
	('Thierry', 'D`Hers', 'Tool Designer', 2, 263, '2003-01-11 00:00:00.000000', 25000.0000, 40),
	('David', 'Bradley', 'Marketing Manager', 5, 109, '2000-01-20 00:00:00.000000', 37500.0000, 199),
	('JoLynn', 'Dobney', 'Production Supervisor', 7, 21, '2000-01-26 00:00:00.000000', 25000.0000, 275),
	('Ruth', 'Ellerbrock', 'Production Technician', 7, 185, '2015-02-06 00:00:00.000000', 13500.0000, 108),
	('Gail', 'Erickson', 'Design Engineer', 1, 3, '2000-02-06 00:00:00.000000', 32700.0000, 22),
	('Barry', 'Johnson', 'Production Technician', 7, 185, '2000-02-07 00:00:00.000000', 13500.0000, 285),
	('Jossef', 'Goldberg', 'Design Engineer', 1, 3, '2000-02-24 00:00:00.000000', 32700.0000, 214),
	('Terri', 'Duffy', 'Vice President of Engineering', 1, 109, '2000-03-03 00:00:00.000000', 63500.0000, 209),
	('Sidney', 'Higa', 'Production Technician', 7, NULL, '2000-03-05 00:00:00.000000', 13500.0000, 73),
	('Taylor', 'Maxwell', 'Production Supervisor', 7, 21, '2010-03-11 00:00:00.000000', 25000.0000, 82),
	('Jeffrey', 'Ford', 'Production Technician', 7, 185, '2000-03-23 00:00:00.000000', 13500.0000, 156),
	('Jo', 'Brown', 'Production Supervisor', 7, 21, '2000-03-30 00:00:00.000000', 25000.0000, 70),
	('Doris', 'Hartwig', 'Production Technician', 7, 185, '2019-04-11 00:00:00.000000', 13500.0000, 144),
	('John', 'Campbell', 'Production Supervisor', 7, 21, '2000-04-18 00:00:00.000000', 25000.0000, 245),
	('Diane', 'Glimp', 'Production Technician', 7, 185, '2020-04-29 00:00:00.000000', 13500.0000, 184),
	('Steven', 'Selikoff', 'Production Technician', 7, 173, '2001-01-02 00:00:00.000000', 9500.0000, 104),
	('Peter', 'Krebs', 'Production Control Manager', 8, 148, '2001-01-02 00:00:00.000000', 24500.0000, 11),
	('Stuart', 'Munson', 'Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 10000.0000, 36),
	('Greg', 'Alderson', 'Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 10000.0000, 18),
	('David', 'Johnson', 'Production Technician', 7, 184, '2001-01-03 00:00:00.000000', 9500.0000, 142),
	('Zheng', 'Mu', 'Production Supervisor', 7, 21, '2001-01-04 00:00:00.000000', 25000.0000, 278),
	('Ivo', 'Salmre', 'Production Technician', 7, 108, '2001-01-05 00:00:00.000000', 14000.0000, 165),
	('Paul', 'Komosinski', 'Production Technician', 7, 87, '2001-01-05 00:00:00.000000', 15000.0000, 32),
	('Ashvini', 'Sharma', 'Network Administrator', 11, 150, '2001-01-05 00:00:00.000000', 32500.0000, 133),
	('Kendall', 'Keil', 'Production Technician', 7, 14, '2001-01-06 00:00:00.000000', 11000.0000, 257),
	('Paula', 'Barreto de Mattos', 'Human Resources Manager', 9, 140, '2001-01-07 00:00:00.000000', 27100.0000, 2),
	('Alejandro', 'McGuel', 'Production Technician', 7, 210, '2001-01-07 00:00:00.000000', 15000.0000, 274),
	('Garrett', 'Young', 'Production Technician', 7, 184, '2001-01-08 00:00:00.000000', 9500.0000, 283),
	('Jian Shuo', 'Wang', 'Production Technician', 7, 135, '2001-01-08 00:00:00.000000', 9500.0000, 160),
	('Susan', 'Eaton', 'Stocker', 15, 85, '2001-01-08 00:00:00.000000', 9000.0000, 204),
	('Vamsi', 'Kuppa', 'Shipping and Receiving Clerk', 15, 85, '2001-01-08 00:00:00.000000', 9500.0000, 51),
	('Alice', 'Ciccu', 'Production Technician', 7, 38, '2001-01-08 00:00:00.000000', 11000.0000, 284),
	('Simon', 'Rapier', 'Production Technician', 7, 7, '2001-01-09 00:00:00.000000', 12500.0000, 64),
	('Jinghao', 'Liu', 'Production Supervisor', 7, 21, '2011-01-09 00:00:00.000000', 25000.0000, 55),
	('Michael', 'Hines', 'Production Technician', 7, 182, '2001-01-10 00:00:00.000000', 14000.0000, 168),
	('Yvonne', 'McKay', 'Production Technician', 7, NULL, '2012-01-10 00:00:00.000000', 10000.0000, 107),
	('Peng', 'Wu', 'Quality Assurance Supervisor', 13, 200, '2001-01-10 00:00:00.000000', 21600.0000, 39),
	('Jean', 'Trenary', 'Information Services Manager', 11, 109, '2001-01-12 00:00:00.000000', 50500.0000, 194),
	('Russell', 'Hunter', 'Production Technician', 7, 74, '2013-01-13 00:00:00.000000', 11000.0000, 258),
	('A. Scott', 'Wright', 'Master Scheduler', 8, 148, '2001-01-13 00:00:00.000000', 23600.0000, 172),
	('Fred', 'Northup', 'Production Technician', 7, 210, '2001-01-13 00:00:00.000000', 15000.0000, 282),
	('Sariya', 'Harnpadoungsataya', 'Marketing Specialist', 4, 6, '2001-01-13 00:00:00.000000', 14400.0000, 106),
	('Willis', 'Johnson', 'Recruiter', 9, 30, '2014-01-14 00:00:00.000000', 18300.0000, 99),
	('Jun', 'Cao', 'Production Technician', 7, 38, '2001-01-15 00:00:00.000000', 11000.0000, 197),
	('Christian', 'Kleinerman', 'Maintenance Supervisor', 14, 218, '2001-01-15 00:00:00.000000', 20400.0000, 118),
	('Susan', 'Metters', 'Production Technician', 7, 184, '2001-01-15 00:00:00.000000', 9500.0000, 224),
	('Reuben', 'D`sa', 'Production Supervisor', 7, 21, '2015-01-16 00:00:00.000000', 25000.0000, 249),
	('Kirk', 'Koenigsbauer', 'Production Technician', 7, 123, '2001-01-16 00:00:00.000000', 10000.0000, 250),
	('David', 'Ortiz', 'Production Technician', 7, 18, '2001-01-16 00:00:00.000000', 12500.0000, 267),
	('Tengiz', 'Kharatishvili', 'Control Specialist', 12, 90, '2001-01-17 00:00:00.000000', 16800.0000, 129),
	('Hanying', 'Feng', 'Production Technician', 7, 143, '2001-01-17 00:00:00.000000', 14000.0000, 182),
	('Kevin', 'Liu', 'Production Technician', 7, 210, '2016-01-18 00:00:00.000000', 15000.0000, 259),
	('Annik', 'Stahl', 'Production Technician', 7, 16, '2001-01-18 00:00:00.000000', 12500.0000, 262),
	('Suroor', 'Fatima', 'Production Technician', 7, 38, '2017-01-18 00:00:00.000000', 11000.0000, 86),
	('Deborah', 'Poe', 'Accounts Receivable Specialist', 10, 139, '2018-01-19 00:00:00.000000', 19000.0000, 103),
	('Jim', 'Scardelis', 'Production Technician', 7, 74, '2001-01-20 00:00:00.000000', 11000.0000, 88),
	('Carole', 'Poland', 'Production Technician', 7, 173, '2001-01-20 00:00:00.000000', 9500.0000, 72),
	('George', 'Li', 'Production Technician', 7, 184, '2019-01-22 00:00:00.000000', 9500.0000, 58),
	('Gary', 'Yukish', 'Production Technician', 7, 87, '2001-01-23 00:00:00.000000', 15000.0000, 80),
	('Cristian', 'Petculescu', 'Production Supervisor', 7, 21, '2001-01-23 00:00:00.000000', 25000.0000, 276),
	('Raymond', 'Sam', 'Production Technician', 7, 143, '2001-01-24 00:00:00.000000', 14000.0000, 75),
	('Janaina', 'Bueno', 'Application Specialist', 11, 42, '2020-01-24 00:00:00.000000', 27400.0000, 131),
	('Bob', 'Hohman', 'Production Technician', 7, 14, '2001-01-25 00:00:00.000000', 11000.0000, 44),
	('Shammi', 'Mohamed','Production Technician', 7, 210, '2001-01-25 00:00:00.000000', 15000.0000, 4),
	('Linda', 'Moschell','Production Technician', 7, 38, '2001-01-26 00:00:00.000000', 11000.0000, 5),
	('Mindy', 'Martin', 'Benefits Specialist', 9, 30, '2021-01-26 00:00:00.000000', 16600.0000, 171),
	('Wendy', 'Kahn', 'Finance Manager', 10, 140, '2001-01-26 00:00:00.000000', 43300.0000, 232),
	('Kim', 'Ralls', 'Stocker', 15, 85, '2023-01-27 00:00:00.000000', 9000.0000, 42),
	('Sandra', 'Reategui Alayo', 'Production Technician', 7, 135, '2001-01-27 00:00:00.000000', 9500.0000, 255),
	('Kok-Ho', 'Loh', 'Production Supervisor', 7, 21, '2020-01-28 00:00:00.000000', 25000.0000, 10),
	('Douglas', 'Hite', 'Production Technician', 7, 159, '2021-01-28 00:00:00.000000', 10000.0000, 57),
	('James', 'Kramer', 'Production Technician', 7, 7, '2001-01-28 00:00:00.000000', 12500.0000, 162),
	('Sean', 'Alexander', 'Quality Assurance Technician', 13, 41, '2001-01-29 00:00:00.000000', 10600.0000, 210),
	('Nitin', 'Mirchandani', 'Production Technician', 7, 182, '2022-01-29 00:00:00.000000', 14000.0000, 231),
	('Diane', 'Margheim', 'Research and Development Engineer', 6, 158, '2001-01-30 00:00:00.000000', 40900.0000, 111),
	('Rebecca', 'Laszlo', 'Production Technician', 7, 16, '2001-01-30 00:00:00.000000', 12500.0000, 6),
	('Rajesh', 'Patel', 'Production Technician', 7, NULL, '2011-02-01 00:00:00.000000', 15000.0000, 81),
	('Vidur', 'Luthra', 'Recruiter', 9, 30, '2001-02-02 00:00:00.000000', 18300.0000, 176),
	('John', 'Evans', 'Production Technician', 7, 38, '2012-02-02 00:00:00.000000', 11000.0000, 253),
	('Nancy', 'Anderson', 'Production Technician', 7, 7, '2013-02-03 00:00:00.000000', 12500.0000, 227),
	('Pilar', 'Ackerman', 'Shipping and Receiving Supervisor', 15, 21, '2001-02-03 00:00:00.000000', 19200.0000, 269),
	('David', 'Yalovsky', 'Production Technician', 7, 184, '2001-02-03 00:00:00.000000', 9500.0000, 241),
	('David', 'Hamilton', 'Production Supervisor', 7, 21, '2015-02-04 00:00:00.000000', 25000.0000, 150),
	('Laura', 'Steele', 'Production Technician', 7, 123, '2016-02-04 00:00:00.000000', 10000.0000, 62),
	('Margie', 'Shoop', 'Production Technician', 7, 16, '2017-02-05 00:00:00.000000', 12500.0000, 92),
	('Zainal', 'Arifin', 'Document Control Manager', 12, 200, '2001-02-05 00:00:00.000000', 17800.0000, 128),
	('Lorraine', 'Nay', 'Production Technician', 7, 210, '2001-02-05 00:00:00.000000', 15000.0000, 94),
	('Fadi', 'Fakhouri', 'Production Technician', 7, 143, '2018-02-05 00:00:00.000000', 14000.0000, 281),
	('Ryan', 'Cornelsen', 'Production Technician', 7, 51, '2001-02-06 00:00:00.000000', 15000.0000, 228),
	('Candy', 'Spoon', 'Accounts Receivable Specialist', 10, 139, '2001-02-07 00:00:00.000000', 19000.0000, 122),
	('Nuan', 'Yu', 'Production Technician', 7, 74, '2019-02-07 00:00:00.000000', 11000.0000, 12),
	('William', 'Vong', 'Scheduling Assistant', 8, 44, '2020-02-08 00:00:00.000000', 16000.0000, 35),
	('Bjorn', 'Rettig', 'Production Technician', 7, 173, '2001-02-08 00:00:00.000000', 9500.0000, 268),
	('Scott', 'Gode', 'Production Technician', 7, 197, '2001-02-09 00:00:00.000000', 10000.0000, 256),
	('Michael', 'Rothkugel', 'Production Technician', 7, 87, '2022-02-11 00:00:00.000000', 15000.0000, 93),
	('Lane', 'Sacksteder', 'Production Technician', 7, 143, '2001-02-12 00:00:00.000000', 14000.0000, 239),
	('Pete', 'Male', 'Production Technician', 7, 14, '2001-02-12 00:00:00.000000', 11000.0000, 273),
	('Dan', 'Bacon', 'Application Specialist', 11, 42, '2021-02-12 00:00:00.000000', 27400.0000, 126),
	('David', 'Barber', 'Assistant to the Chief Financial Officer', 10, 140, '2001-02-13 00:00:00.000000', 13500.0000, 173),
	('Lolan', 'Song', 'Production Technician', 7, 74, '2001-02-13 00:00:00.000000', 11000.0000, 77),
	('Paula', 'Nartker', 'Production Technician', 7, 210, '2001-02-13 00:00:00.000000', 15000.0000, 247),
	('Mary', 'Gibson', 'Marketing Specialist', 4, 6, '2023-02-13 00:00:00.000000', 14400.0000, 110),
	('Mindaugas', 'Krapauskas', 'Production Technician', 7, 38, '2001-02-14 00:00:00.000000', 11000.0000, 74),
	('Eric', 'Gubbels', 'Production Supervisor', 7, 21, '2010-02-15 00:00:00.000000', 25000.0000, 85),
	('Ken', 'Sanchez', 'Chief Executive Officer', 16, NULL, '2001-02-15 00:00:00.000000', 125500.0000, 177),
	('Jason', 'Watters', 'Production Technician', 7, 135, '2011-02-15 00:00:00.000000', 9500.0000, 21),
	('Mark', 'Harrington', 'Quality Assurance Technician', 13, 41, '2001-02-16 00:00:00.000000', 10600.0000, 139),
	('Janeth', 'Esteves', 'Production Technician', 7, 159, '2012-02-16 00:00:00.000000', 10000.0000, 163),
	('Marc', 'Ingle', 'Production Technician', 7, 184, '2013-02-17 00:00:00.000000', 9500.0000, 230),
	('Gigi', 'Matthew', 'Research and Development Engineer', 6, 158, '2001-02-17 00:00:00.000000', 40900.0000, 23),
	('Paul', 'Singh', 'Production Technician', 7, 108, '2014-02-18 00:00:00.000000', 14000.0000, 16),
	('Frank', 'Lee', 'Production Technician', 7, 210, '2015-02-18 00:00:00.000000', 15000.0000, 263),
	('Francois', 'Ajenstat', 'Database Administrator', 11, 42, '2001-02-18 00:00:00.000000', 38500.0000, 127),
	('Diane', 'Tibbott', 'Production Technician', 7, 14, '2016-02-19 00:00:00.000000', 11000.0000, 140),
	('Jill', 'Williams', 'Marketing Specialist', 4, 6, '2071-02-19 00:00:00.000000', 14400.0000, 114),
	('Angela', 'Barbariol', 'Production Technician', 7, 38, '2001-02-21 00:00:00.000000', 11000.0000, 91),
	('Matthias', 'Berndt', 'Shipping and Receiving Clerk', 15, 85, '2001-02-21 00:00:00.000000', 9500.0000, 201),
	('Bryan', 'Baker', 'Production Technician', 7, 7, '2019-02-22 00:00:00.000000', 12500.0000, 166),
	('Jeff', 'Hay', 'Production Supervisor', 7, 21, '2010-02-22 00:00:00.000000', 25000.0000, 113),
	('Eugene', 'Zabokritski', 'Production Technician', 7, 184, '2001-02-22 00:00:00.000000', 9500.0000, 226),
	('Barbara', 'Decker', 'Production Technician', 7, 182, '2001-02-23 00:00:00.000000', 14000.0000, 219),
	('Chris', 'Preston', 'Production Technician', 7, 123, '2011-02-23 00:00:00.000000', 10000.0000, 279),
	('Sean', 'Chai', 'Document Control Assistant', 12, 90, '2001-02-23 00:00:00.000000', 10300.0000, 138),
	('Dan', 'Wilson', 'Database Administrator', 11, 42, '2012-02-23 00:00:00.000000', 38500.0000, 30),
	('Mark', 'McArthur', 'Production Technician', 7, 16, '2012-02-24 00:00:00.000000', 12500.0000, 186),
	('Bryan', 'Walton', 'Accounts Receivable Specialist', 10, 139, '2001-02-25 00:00:00.000000', 19000.0000, 175),
	('Houman', 'Pournasseh', 'Production Technician', 7, 74, '2001-02-26 00:00:00.000000', 11000.0000, 185),
	('Sairaj', 'Uddin', 'Scheduling Assistant', 8, 44, '2013-02-27 00:00:00.000000', 16000.0000, 190),
	('Michiko', 'Osada', 'Production Technician', 7, 173, '2001-02-27 00:00:00.000000', 9500.0000, 229),
	('Benjamin', 'Martin', 'Production Technician', 7, 184, '2014-02-28 00:00:00.000000', 9500.0000, 286),
	('Cynthia', 'Randall', 'Production Supervisor', 7, 21, '2015-02-28 00:00:00.000000', 25000.0000, 147),
	('Kathie', 'Flood', 'Production Technician', 7, 197, '2001-02-28 00:00:00.000000', 10000.0000, 100),
	('Britta', 'Simon', 'Production Technician', 7, 16, '2016-03-02 00:00:00.000000', 12500.0000, 95),
	('Brian', 'Lloyd', 'Production Technician', 7, 210, '2017-03-02 00:00:00.000000', 15000.0000, 288),
	('David', 'Liu', 'Accounts Manager', 10, 140, '2018-03-03 00:00:00.000000', 34700.0000, 119),
	('Laura', 'Norman', 'Chief Financial Officer', 16, 109, '2019-03-04 00:00:00.000000', 60100.0000, 215),
	('Michael', 'Patten', 'Production Technician', 7, 38, '2021-03-04 00:00:00.000000', 11000.0000, 96),
	('Andy', 'Ruth', 'Production Technician', 7, 135, '2020-03-04 00:00:00.000000', 9500.0000, 1),
	('Yuhong', 'Li', 'Production Supervisor', 7, 21, '2022-03-05 00:00:00.000000', 25000.0000, 242),
	('Robert', 'Rounthwaite', 'Production Technician', 7, 159, '2023-03-06 00:00:00.000000', 10000.0000, 280),
	('Andreas', 'Berglund', 'Quality Assurance Technician', 13, 41, '2001-03-06 00:00:00.000000', 10600.0000, 208),
	('Reed', 'Koch', 'Production Technician', 7, 184, '2020-03-06 00:00:00.000000', 9500.0000, 191),
	('Linda', 'Randall', 'Production Technician', 7, NULL, '2001-03-07 00:00:00.000000', 14000.0000, 260),
	('James', 'Hamilton', 'Vice President of Production', 7, 109, '2001-03-07 00:00:00.000000', 84100.0000, 158),
	('Ramesh', 'Meyyappan', 'Application Specialist', 11, 42, '2001-03-07 00:00:00.000000', 27400.0000, 130),
	('Stephanie', 'Conroy', 'Network Manager', 11, 42, '2021-03-08 00:00:00.000000', 39700.0000, 136),
	('Samantha', 'Smith', 'Production Technician', 7, 108, '2001-03-08 00:00:00.000000', 14000.0000, 14),
	('Tawana', 'Nusbaum', 'Production Technician', 7, 210, '2021-03-09 00:00:00.000000', 15000.0000, 237),
	('Denise', 'Smith', 'Production Technician', 7, 14, '2022-03-09 00:00:00.000000', 11000.0000, 143),
	('Hao', 'Chen', 'Human Resources Administrative Assistant', 9, 30, '2001-03-10 00:00:00.000000', 13900.0000, 135),
	('Alex', 'Nayberg', 'Production Technician', 7, 123, '2023-03-12 00:00:00.000000', 10000.0000, 174),
	('Eugene', 'Kogan', 'Production Technician', 7, 7, '2001-03-12 00:00:00.000000', 12500.0000, 71),
	('Brandon', 'Heidepriem', 'Production Technician', 7, 16, '2001-03-12 00:00:00.000000', 12500.0000, 189),
	('Dylan', 'Miller', 'Research and Development Manager', 6, 3, '2011-03-12 00:00:00.000000', 50500.0000, 141),
	('Shane', 'Kim', 'Production Supervisor', 7, 21, '2012-03-12 00:00:00.000000', 25000.0000, 20),
	('John', 'Chen', 'Production Technician', 7, 182, '2013-03-13 00:00:00.000000', 14000.0000, 65),
	('Karen', 'Berge', 'Document Control Assistant', 12, 90, '2014-03-13 00:00:00.000000', 10300.0000, 123),
	('Jose', 'Lugo', 'Production Technician', 7, 16, '2001-03-14 00:00:00.000000', 12500.0000, 271),
	('Mandar', 'Samant', 'Production Technician', 7, 74, '2001-03-14 00:00:00.000000', 11000.0000, 63),
	('Mikael', 'Sandberg', 'Buyer', 5, 274, '2015-03-14 00:00:00.000000', 18300.0000, 50),
	('Sameer', 'Tejani', 'Production Technician', 7, 74, '2016-03-15 00:00:00.000000', 11000.0000, 66),
	('Dragan', 'Tomic', 'Accounts Payable Specialist', 10, 139, '2001-03-15 00:00:00.000000', 19000.0000, 115),
	('Carol', 'Philips', 'Production Technician', 7, 173, '2001-03-16 00:00:00.000000', 9500.0000, 45),
	('Rob', 'Caron', 'Production Technician', 7, 87, '2017-03-17 00:00:00.000000', 15000.0000, 161),
	('Don', 'Hall', 'Production Technician', 7, 38, '2018-03-17 00:00:00.000000', 11000.0000, 59),
	('Alan', 'Brewer', 'Scheduling Assistant', 8, 44, '2019-03-17 00:00:00.000000', 16000.0000, 151),
	('David', 'Lawrence', 'Production Technician', 7, 184, '2001-03-18 00:00:00.000000', 9500.0000, 167),
	('Baris', 'Cetinok', 'Production Technician', 7, 87, '2001-03-19 00:00:00.000000', 15000.0000, 244),
	('Michael', 'Ray', 'Production Supervisor', 7, 21, '2020-03-19 00:00:00.000000', 25000.0000, 277),
	('Steve', 'Masters', 'Production Technician', 7, 18, '2001-03-19 00:00:00.000000', 12500.0000, 252),
	('Suchitra', 'Mohan', 'Production Technician', 7, 16, '2021-03-20 00:00:00.000000', 12500.0000, 31),
	('Karen', 'Berg', 'Application Specialist', 11, 42, '2022-03-20 00:00:00.000000', 27400.0000, 132),
	('Terrence', 'Earls', 'Production Technician', 7, 143, '2001-03-20 00:00:00.000000', 14000.0000, 34),
	('Barbara', 'Moreland', 'Accountant', 10, 139, '2023-03-22 00:00:00.000000', 26400.0000, 254),
	('Chad', 'Niswonger', 'Production Technician', 7, 38, '2010-03-22 00:00:00.000000', 11000.0000, 46),
	('Rostislav', 'Shabalin', 'Production Technician', 7, 135, '2001-03-23 00:00:00.000000', 9500.0000, 9),
	('Belinda', 'Newman', 'Production Technician', 7, 197, '2011-03-24 00:00:00.000000', 10000.0000, 43),
	('Katie', 'McAskill-White', 'Production Supervisor', 7, 21, '2001-03-24 00:00:00.000000', 25000.0000, 240),
	('Russell', 'King', 'Production Technician', 7, 184, '2012-03-25 00:00:00.000000', 9500.0000, 3),
	('Jack', 'Richins', 'Production Supervisor', 7, 21, '2013-03-25 00:00:00.000000', 25000.0000, 169),
	('Andrew', 'Hill', 'Production Supervisor', 7, 21, '2014-03-26 00:00:00.000000', 25000.0000, 97),
	('Nicole', 'Holliday', 'Production Technician', 7, 87, '2001-03-26 00:00:00.000000', 15000.0000, 238),
	('Frank', 'Miller', 'Production Technician', 7, 14, '2015-03-27 00:00:00.000000', 11000.0000, 289),
	('Peter', 'Connelly', 'Network Administrator', 11, 150, '2001-03-27 00:00:00.000000', 32500.0000, 137),
	('Anibal', 'Sousa', 'Production Technician', 7, 108, '2016-03-27 00:00:00.000000', 14000.0000, 183),
	('Ken', 'Myer', 'Production Technician', 7, 210, '2017-03-28 00:00:00.000000', 15000.0000, 105),
	('Grant', 'Culbertson', 'Human Resources Administrative Assistant', 9, 30, '2001-03-29 00:00:00.000000', 13900.0000, 117),
	('Michael', 'Entin', 'Production Technician', 7, 38, '2018-03-29 00:00:00.000000', 11000.0000, 195),
	('Lionel', 'Penuchot', 'Production Technician', 7, 159, '2019-03-30 00:00:00.000000', 10000.0000, 261),
	('Thomas', 'Michaels', 'Production Technician', 7, 7, '2001-03-30 00:00:00.000000', 12500.0000, 78),
	('Jimmy', 'Bischoff', 'Stocker', 15, 85, '2020-03-30 00:00:00.000000', 9000.0000, 206),
	('Michael', 'Vanderhyde', 'Production Technician', 7, 135, '2001-03-30 00:00:00.000000', 9500.0000, 90),
	('Lori', 'Kane', 'Production Supervisor', 7, 21, '2021-03-30 00:00:00.000000', 25000.0000, 198),
	('Arvind', 'Rao', 'Buyer', 5, 274, '2022-04-01 00:00:00.000000', 18300.0000, 212),
	('Stefen', 'Hesse', 'Production Technician', 7, 182, '2001-04-01 00:00:00.000000', 14000.0000, 68),
	('Hazem', 'Abolrous', 'Quality Assurance Manager', 13, 148, '2023-04-01 00:00:00.000000', 28800.0000, 148);
	
	
CREATE TABLE IF NOT EXISTS projects (
  "id" SERIAL PRIMARY KEY,
  project_name VARCHAR(70) NOT NULL,
  description  TEXT,
  start_date TIMESTAMP DEFAULT NULL,
  end_date TIMESTAMP DEFAULT NULL
);


INSERT INTO projects (
	project_name, description, start_date, end_date
) 
VALUES
	('Classic Vest', 'Research, design and development of Classic Vest. Light-weight, wind-resistant, packs to fit into a pocket.', NULL, NULL),
	('Cycling Cap', 'Research, design and development of Cycling Cap. Traditional style with a flip-up brim; one-size fits all.', '2001-09-01 08:00:00', '2003-10-01 12:00:00'),
	('Full-Finger Gloves', 'Research, design and development of Full-Finger Gloves. Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.', '2002-01-15 10:00:00', '2003-06-02 09:00:00'),
	('Half-Finger Gloves', 'Research, design and development of Half-Finger Gloves. Full padding, improved finger flex, durable palm, adjustable closure.', '2002-01-31 01:00:00', '2003-02-12 01:00:00'),
	('HL Mountain Frame', 'Research, design and development of HL Mountain Frame. Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.', '2001-06-02 09:00:00', NULL),
	('HL Road Frame', 'Research, design and development of HL Road Frame. Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.', NULL, NULL),
	('HL Touring Frame', 'Research, design and development of HL Touring Frame. The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men`s version.', NULL, NULL),
	('LL Mountain Frame', 'Research, design and development of LL Mountain Frame. Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.', '2002-11-20 09:57:00', '2003-06-01 16:30:00'),
	('LL Road Frame', 'Research, design and development of LL Road Frame. The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.', '2001-06-01 09:20:00', '2003-03-16 10:05:00'),
	('LL Touring Frame', 'Research, design and development of LL Touring Frame. Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.', '2005-08-20 16:34:00', NULL),
	('Long-Sleeve Logo Jersey', 'Research, design and development of Long-Sleeve Logo Jersey. Unisex long-sleeve AWC logo microfiber cycling jersey', '2001-06-01 00:00:00.000000', '2003-03-26 08:25:00'),
	('Men`s Bib-Shorts', 'Research, design and development of Men`s Bib-Shorts. Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.', '2002-04-12 11:00:00', NULL),
	('Mountain-100', 'Research, design and development of Mountain-100. Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.', '2001-04-14 14:00:00', NULL),
	('Mountain', 'Research, design and development of Mountain-200. Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.', '2002-03-05 00:00:00', '2004-03-11 10:32:00'),
	('Mountain-300', 'Research, design and development of Mountain-300. For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.', '2002-05-10 07:00:00', '2003-06-06 07:00:00'),
	('Mountain', 'Research, design and development of Mountain-400-W. This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.', NULL, NULL),
	('Mountain', 'Research, design and development of Mountain-500. Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.', '2002-05-11 09:57:00', '2003-06-30 00:00:00'),
	('Racing Socks', 'Research, design and development of Racing Socks. Thin, lightweight and durable with cuffs that stay up.', '2005-07-11 00:00:00', NULL),
	('Road', 'Research, design and development of Road-150. This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.', '2001-09-07 05:00:00', '2003-06-08 17:00:00'),
	('Road', 'Research, design and development of Road-250. Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.', '2002-01-08 14:00:00', NULL),
	('Road', 'Research, design and development of Road-350-W. Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.', NULL, NULL),
	('Road', 'Research, design and development of Road-450. A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.', '2001-09-16 12:00:00', NULL),
	('Road', 'Research, design and development of Road-550-W. Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.', '2002-06-09 10:00:00', '2003-06-10 08:00:00'),
	('Road', 'Research, design and development of Road-650. Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we`re famous for.', '2001-06-10 01:00:00', NULL),
	('Road', 'Research, design and development of Road-750. Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.', '2002-01-10 09:57:00', '2003-05-11 20:00:00'),
	('Short-Sleeve Classic Jersey', 'Research, design and development of Short-Sleeve Classic Jersey. Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.', NULL, NULL),
	('Sport-100', 'Research, design and development of Sport-100. Universal fit, well-vented, lightweight , snap-on visor.', '2001-06-01 00:00:00', '2003-10-18 00:00:00'),
	('Touring', 'Research, design and development of Touring-1000. Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.', '2002-11-11 09:57:00', '2003-06-12 00:00:00'),
	('Touring', 'Research, design and development of Touring-2000. The plush custom saddle keeps you riding all day,  and there`s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.', '2002-11-20 11:57:00', NULL),
	('Touring', 'Research, design and development of Touring-3000. All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.', '2002-09-11 09:57:00', '2003-12-22 02:00:00'),
	('Women`s Mountain Shorts', 'Research, design and development of Women`s Mountain Shorts. Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.', NULL, NULL),
	('Women`s Tights', 'Research, design and development of Women`s Tights. Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.', '2002-06-01 00:00:00', '2003-12-18 08:00:00'),
	('Mountain-400', 'Research, design and development of Mountain-400. Suitable for any type of off-road trip. Fits any budget.', '2001-06-01 16:00:00', '2004-06-01 05:00:00'),
	('Road-550', 'Research, design and development of Road-550. Same technology as all of our Road series bikes.  Perfect all-around bike for road or racing.', '2002-06-12 07:00:00', NULL),
	('Road-350', 'Research, design and development of Road-350. Cross-train, race, or just socialize on a sleek, aerodynamic bike.  Advanced seat technology provides comfort all day.', '2002-12-11 09:57:00', '2003-03-12 03:00:00'),
	('LL Mountain Front Wheel', 'Research, design and development of LL Mountain Front Wheel. Replacement mountain wheel for entry-level rider.', '2002-11-12 09:57:00', '2005-06-01 21:00:00'),
	('Touring', 'Research, design and development of Touring Rear Wheel. Excellent aerodynamic rims guarantee a smooth ride.', '2005-05-01 16:34:00', NULL),
	('Touring', 'Research, design and development of Touring Front Wheel. Aerodynamic rims for smooth riding.', '2005-05-06 16:45:00', NULL),
	('Mountain Front Wheel', 'Research, design and development of ML Mountain Front Wheel. Replacement mountain wheel for the casual to serious rider.', '2002-06-01 01:20:00', '2003-06-01 16:30:00'),
	('Mountain Front Wheel', 'Research, design and development of HL Mountain Front Wheel. High-performance mountain replacement wheel.', '2002-06-01 00:00:00', '2003-05-14 12:15:00'),
	('LL Touring Handlebars', 'Research, design and development of LL Touring Handlebars. Unique shape reduces fatigue for entry level riders.', '2005-05-10 16:34:000', NULL),
	('HL Touring Handlebars', 'Research, design and development of HL Touring Handlebars. A light yet stiff aluminum bar for long distance riding.', NULL, NULL),
	('Road', 'Research, design and development of LL Road Front Wheel. Replacement road front wheel for entry-level cyclist.', '2002-01-16 10:00:00', '2003-01-26 22:00:00'),
	('Road', 'Research, design and development of ML Road Front Wheel. Sturdy alloy features a quick-release hub.', '2002-01-15 00:00:00', '2003-06-07 23:00:00'),
	('Road', 'Research, design and development of HL Road Front Wheel. Strong wheel with double-walled rim.', '2002-06-04 00:00:00', '2003-06-01 00:00:00'),
	('Mountain Handlebars', 'Research, design and development of LL Mountain Handlebars. All-purpose bar for on or off-road.', '2002-06-08 03:00:00', '2003-01-13 18:00:00'),
	('Touring', 'Research, design and development of Touring Pedal. A stable pedal for all-day riding.', NULL, NULL),
	('Mountain', 'Research, design and development of ML Mountain Handlebars. Tough aluminum alloy bars for downhill.', '2007-06-01 00:00:00', '2008-06-01 20:10:00'),
	('Mountain Handlebars', 'Research, design and development of HL Mountain Handlebars. Flat bar strong enough for the pro circuit.', '2010-04-16 00:00:00', NULL),
	('Road', 'Research, design and development of LL Road Handlebars. Unique shape provides easier reach to the levers.', '2011-07-07 10:00:00', '2013-06-01 11:00:00'),
	('Road', 'Research, design and development of ML Road Handlebars. Anatomically shaped aluminum tube bar will suit all riders.', NULL, NULL),
	('Road', 'Research, design and development of HL Road Handlebars. Designed for racers; high-end anatomically shaped bar from aluminum alloy.', '2022-06-01 10:00:00', NULL),
	('LL Headset', 'Research, design and development of LL Headset. Threadless headset provides quality at an economical price.', '2022-06-07 00:00:00', '2023-06-09 00:00:00'),
	('ML Headset', 'Research, design and development of ML Headset. Sealed cartridge keeps dirt out.', '2002-06-01 00:00:00', '2023-06-01 02:00:00'),
	('HL Headset', 'Research, design and development of HL Headset. High-quality 1" threadless headset with a grease port for quick lubrication.', '2012-06-01 03:00:00', '2023-01-18 05:15:00'),
	('Road', 'Research, design and development of ML Road Rear Wheel. Aluminum alloy rim with stainless steel spokes; built for speed.', '2012-06-01 01:00:00', '2013-06-10 09:00:00'),
	('Road', 'Research, design and development of HL Road Rear Wheel. Strong rear wheel with double-walled rim.', '2002-06-01 00:00:00', '2013-01-16 09:00:00'),
	('LL Mountain Seat/Saddle 2', 'Research, design and development of LL Mountain Seat/Saddle 2. Synthetic leather. Features gel for increased comfort.', NULL, NULL),
	('Mountain', 'Research, design and development of ML Mountain Seat/Saddle 2. Designed to absorb shock.', '2014-06-01 00:00:00', '2015-03-11 10:32:00'),
	('LL Fork', 'Research, design and development of LL Fork. Stout design absorbs shock and offers more precise steering.', '2012-06-01 00:00:00', NULL),
	('ML Fork', 'Research, design and development of ML Fork. Composite road fork with an aluminum steerer tube.', NULL, NULL),
	('HL Fork', 'Research, design and development of HL Fork. High-performance carbon road fork with curved legs.', '2017-06-01 07:00:00', '2018-12-01 00:00:00'),
	('Hydration Pack', 'Research, design and development of Hydration Pack. Versatile 70 oz hydration pack offers extra storage, easy-fill access, and a waist belt.', NULL, NULL),
	('Taillight', 'Research, design and development of Taillight. Affordable light for safe night riding - uses 3 AAA batteries', '2020-06-01 21:00:00', '2023-06-02 20:00:00'),
	('Headlights - Dual-Beam', 'Research, design and development of Headlights - Dual-Beam. Rechargeable dual-beam headlight.', '2016-06-01 07:00:00', NULL),
	('Headlights - Weatherproof', 'Research, design and development of Headlights - Weatherproof. Rugged weatherproof headlight.', '2018-06-01 03:00:00', '2019-06-09 04:00:00'),
	('Water Bottle', 'Research, design and development of Water Bottle. AWC logo water bottle - holds 30 oz; leak-proof.', '2023-06-01 12:00:00', NULL),
	('Mountain Bottle Cage', 'Research, design and development of Mountain Bottle Cage. Tough aluminum cage holds bottle securly on tough terrain.', '2014-06-01 15:00:00', NULL),
	('Road Bottle Cage', 'Research, design and development of Road Bottle Cage. Aluminum cage is lighter than our mountain version; perfect for long distance trips.', '2004-02-21 16:00:00', NULL),
	('Patch kit', 'Research, design and development of Patch kit. Includes 8 different size patches, glue and sandpaper.', '2016-10-15 19:00:00', NULL),
	('Cable Lock', 'Research, design and development of Cable Lock. Wraps to fit front and rear tires, carrier and 2 keys included.', '2019-06-01 20:00:00', '2019-10-10 09:00:000'),
	('Minipump', 'Research, design and development of Minipump. Designed for convenience. Fits in your pocket. Aluminum barrel. 160psi rated.', '2020-06-01 05:00:00', '2023-06-01 10:00:00'),
	('Mountain', 'Research, design and development of Mountain Pump. Simple and light-weight. Emergency patches stored in handle.', '2022-06-06 08:00:00', '2022-06-12 04:00:00'),
	('Hitch Rack - 4-Bike', 'Research, design and development of Hitch Rack - 4-Bike. Carries 4 bikes securely; steel construction, fits 2" receiver hitch.', NULL, NULL),
	('Bike Wash', 'Research, design and development of Bike Wash. Washes off the toughest road grime; dissolves grease, environmentally safe. 1-liter bottle.', '2022-08-01 06:00:00', NULL),
	('Touring-Panniers', 'Research, design and development of Touring-Panniers. Durable, water-proof nylon construction with easy access. Large enough for weekend trips.', '2021-06-08 07:00:00', NULL),
	('Fender Set - Mountain', 'Research, design and development of Fender Set - Mountain. Clip-on fenders fit most mountain bikes.', '2023-06-01 09:00:00', NULL),
	('All-Purpose Bike Stand', 'Research, design and development of All-Purpose Bike Stand. Perfect all-purpose bike stand for working on your bike at home. Quick-adjusting clamps and steel construction.', NULL, NULL),
	('Rear Derailleur', 'Research, design and development of Rear Derailleur. Wide-link design.', NULL, NULL);


SELECT
	COUNT(CASE WHEN department_id = 1 THEN 1 END) AS "Engineering",
	COUNT(CASE WHEN department_id = 2 THEN 1 END) AS "Tool Design",
	COUNT(CASE WHEN department_id = 3 THEN 1 END) AS "Sales",
	COUNT(CASE WHEN department_id = 4 THEN 1 END) AS "Marketing",
	COUNT(CASE WHEN department_id = 5 THEN 1 END) AS "Purchasing",
	COUNT(CASE WHEN department_id = 6 THEN 1 END) AS "Research and Development",
	COUNT(CASE WHEN department_id = 7 THEN 1 END) AS "Production"
FROM
	employees;


UPDATE
	employees
SET
	salary = CASE
		WHEN hire_date < '2015-01-16' THEN salary + 2500
		WHEN hire_date < '2020-03-04' THEN salary + 1500
		ELSE salary
	END,
	job_title = CASE
		WHEN hire_date < '2015-01-16' THEN 'Senior ' || job_title
		WHEN hire_date < '2020-03-04' THEN 'Mid-' || job_title
		ELSE job_title
	END;	

SELECT
	job_title,
	CASE 
		WHEN AVG(salary) > 45800 THEN 'Good'
		WHEN AVG(salary) < 27500 THEN 'Need Improvement'
		ELSE 'Medium'
	END AS category
FROM 
	employees
GROUP BY
	job_title
ORDER BY
	category ASC,
	job_title ASC;	

SELECT
	project_name,
	CASE 
		WHEN start_date IS NULL AND end_date IS NULL THEN 'Ready for development'
		WHEN start_date IS NOT NULL AND end_date IS NULL THEN 'In Progress'
		ELSE 'Done'
	END AS project_status
FROM
	projects
WHERE
	project_name LIKE '%Mountain%'	


SELECT
	department_id,
	COUNT(department_id) AS num_employees,
	CASE 
		WHEN AVG(salary) > 50000 THEN 'Above average'
		ELSE 'Below average'
	END AS salary_level
FROM
	employees
GROUP BY
	department_id
HAVING	
	AVG(salary) > 30000
ORDER BY
	department_id ASC;	



CREATE VIEW
	view_performance_rating
AS
SELECT
	first_name,
	last_name,
	job_title,
	salary,
	department_id,
	CASE 
		WHEN salary >= 25000 THEN
			CASE
				WHEN job_title LIKE 'Senior%' THEN 'High-performing Senior'
				ELSE 'High-performing Employee'
			END
		ELSE 'Average-performing'
	END AS performance_rating
FROM
	employees	


CREATE TABLE employees_projects(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	employee_id INT,
	project_id INT,
	
	FOREIGN KEY (employee_id)
	REFERENCES employees(id),
	
	FOREIGN KEY (project_id)
	REFERENCES projects(id)
);	


SELECT
	*
FROM
	departments
JOIN
	employees
ON
	employees.department_id = departments.id