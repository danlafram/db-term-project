-- Clinic data
INSERT INTO cliniques (address, telephone, telecopier, gestionnaireID)
VALUES 
("123 Laurier Street, Ottawa, Ontatio, L3T 5G9", "613-288-9988", "888-223-1423", 4),
("654 King Edward Street, Ottawa, Ontatio, T5T 9I8", "613-993-4388", "888-259-1445", 8),
("123 Laurier Street, Ottawa, Ontatio, L3T 5G9", "613-288-9988", "888-223-1423", 12),
("123 Laurier Street, Ottawa, Ontatio, L3T 5G9", "613-288-9988", "888-223-1423", 16);

INSERT INTO employees (fname, lname, address, telephone, dob, sexe, nas, fonction, salary)
VALUES
("Alex", "Reynolds", "443 Devonwood Circle, Ottawa, Ontario, G3A 1C3", "613-229-3857", "1988-08-22", "M", "193-8274-981", "Administration", 42000.35, 1),
("Norm", "Auger", "245 Longpoint Crescent, Ottawa, Ontario, H0B 3M1", "613-938-2937", "1966-12-15", "M", "123-6346-127", "Veterinaire", 78000.00, 1),
("Chantal", "Richardson", "123 Hatchet Road, Ottawa, Ontario, B4W 9I1", "613-213-5463", "1963-08-22", "F", "083-2816-998", "Veterinaire", 85300.23, 1),
("Judy", "Middlemiss", "156 Mercedes Lane, Ottawa, Ontario, J5K 9L0", "613-163-1122", "1979-01-05", "F", "193-8274-981", "Gestionnaire", 53000.12, 1),
("Julia", "Toomey", "1877 Moonlight Road, Ottawa, Ontario, C0V 9A1", "613-526-1553", "1992-03-24", "F", "441-7722-573", "Administration", 39000.12, 2),
("Kara", "Webb", "288 Canine Avenue, Ottawa, Ontario, L1L 1D5", "613-223-5514", "1989-05-23", "F", "124-5553-125", "Veterinaire", 88500.02, 2),
("Samantha", "Briggs", "233 Richards Road, Ottawa, Ontario, B8B 2G5", "613-155-5663", "1990-11-15", "F", "146-2256-120", "Veterinaire", 95000.65, 2),
("Rich", "Fronning", "156 Woodland Circle, Ottawa, Ontario, N8Q 0T4", "613-778-3352", "1979-01-31", "M", "525-5553-167", "Gestionnaire", 62050.50, 2),
("Alexandra", "Clearview", "5 Thorn Lane, Ottawa, Ontario, N2C 9K5", "613-111-4624", "1985-10-14", "F", "124-1526-122", "Administration", 50500.52, 3),
("Bernard", "Poukay", "33 Linda Lane, Ottawa, Ontario, K2G 5T6", "613-364-3666", "1986-09-09", "M", "414-3958-395", "Veterinaire", 90100.80, 3),
("Bonnie", "Prosser", "776 Washignton Street, Ottawa, Ontario, M59 1L4", "613-869-2803", "1964-08-11", "F", "143-8958-362", "Veterinaire", 86700.65, 3),
("Matthew", "Fraser", "209 Parkdale Crescent, Ottawa, Ontario, O0A 9D2", "613-325-6623", "1992-07-24", "M", "424-5266-278", "Gestionnaire", 51090.75, 3),
("Adam", "Glover", "99 Gretzky Road, Ottawa, Ontario, F4G 8N1", "613-124-4422", "1994-02-24", "M", "634-2366-253", "Administration", 38000.02, 4),
("Leo", "DiGenard", "299 Vermont Street, Ottawa, Ontario, Z7F 1H4", "613-256-3278", "1983-04-20", "M", "235-5039-309", "Veterinaire", 79010.98, 4),
("Mary", "Hernandez", "1 Main Street, Ottawa, Ontario, Z5T 1B2", "613-398-1263", "1954-08-11", "F", "234-5233-520", "Veterinaire", 102000.15, 4),
("Emilie", "Hooly", "15 Ritchcraft Road, Ottawa, Ontario, F2P 0M2", "613-325-6623", "1988-06-14", "F", "356-2099-102", "Gestionnaire", 49500.85, 4);

INSERT INTO owners(fName, lName, address, telephone)
VALUES
("Troy", "Wilfrid", "218 Slane Avenue, Ottawa, Ontario, L3B 8Y6", "613-928-2889"),
("Janet", "Levignston", "100 Trudeau Read, Ottawa, Ontario, Z3A 6S2", "613-112-4278"),
("Michael", "Moore", "9 Picket Lane, Ottawa, Ontario, P1V 3E3", "613-144-2140"),
("Tobias", "Henderson", "199 Covert Street, Ottawa, Ontario, J2R 0Q2", "613-028-2984"),
("Kelly", "Wendle", "92 Mitchem Road, Ottawa, Ontario, D8G 2H8", "613-125-52566"),
("Ryan", "Scott", "144 Busser Crescent, Ottawa, Ontario, B9O 1Q3", "613-146-2208"),
("James", "Bryant", "155 Huff Road, Ottawa, Ontario, D5E 0W7", "613-187-1993");

INSERT INTO animals(name, type, description, dob, date_inscription, animal_state, ownerNum)
VALUES
("Molly", "Dog", "Long gold hair labradoodle, fairly large, small hips issues to consider soon.", "2009-04-20", "2017-09-01", vivant, 1),
("Polly", "Bird", "Amazonian Parrot, colourful, large wignspan.", "2005-10-31", "2017-10-04", vivant, 2),
("Diego", "Snake", "Floridian python, recently operated on for intestinal issues.", "2012-09-15", "2017-02-09", decede, 2),
("Zeek", "Dog", "Black hair great-dane, very good health.", "2015-11-22", "2017-09-03", vivant, 3),
("Griffon", "Cat", "Egyptian hairless cat, very skiddish, approach with caution.", "2008-08-90", "2017-08-07", vivant, 4),
("Cleo", "Cat", "Savannah Cat, recently domesticated, very dangerous.", "2016-02-28", "2017-10-11", vivant, 5),
("Dory", "Fish", "Large blue fish, diagnosed with memory issues.", "2011-05-22", "2017-03-21", decede, 5),
("Sir Charles", "Dog", "Small pomeranian, very loud and tends to bite a lot.", "2007-05-29", "2017-01-07", vivant, 5),
("Xavier", "Ferret", "Very old common pherret.", "2006-12-20", "2017-01-28", vivant, 6),
("Slimmy Jimmy", "Lizard", "Arizona rock lizard, very small for its kind.", "2012-09-19", "2017-10-01", vivant, 7),
("Jeffery", "Bird", "Alaskan Budgie, smaller bird, clipped wings", "2010-04-20", "2017-02-06", vivant, 1);

INSERT INTO exams(exam_date, description, examiner, animalNo)
VALUES
("2018-03-10", "Molly is very healthy considering her age. Continue feeding her the new food.", 2, 1),
("2018-01-05", "Polly's wings are great. Let her fly around for 1-2 hours a day.", 3, 2),
("2018-02-28", "Diego should continue eating 1-2 times a week.", 3, 3),
("2018-02-09", "Zeek is a big dog so make sure you give him exercise once a day", 6, 4),
("2018-01-17", "Ensure Griffon has enough water, he seems dehydrated.", 7, 5),
("2018-01-04", "Cleo is slightly overweight. We might need to consider a diet soon.", 10, 6),
("2018-01-30", "Dory's tank needs to be cleaned every week.", 10, 7),
("2018-02-10", "Charles is doing great. Keep walking him twice a day.", 11, 8),
("2018-03-10", "Xavier is getting old but seems to be doing well. We might do a shot next time.", 14, 9),
("2018-03-10", "Jimmy is still very small for his kind and age. Maybe increase the food.", 15, 10),
("2018-03-10", "Since his wings are clipped, you'll have to make sure he gets exercise somehow.", 15, 11);

INSERT INTO results(treatment_quantity, start_date, end_date, examNo, animalNo, treatmentNo)
VALUES
(3, "2018-03-20", "2018-06-20", 1, 1, "T110"),
(12, "2018-02-28", "2019-02-28", 3, 3, "T112"),
(24, "2018-01-09", "2018-03-09", 5, 5, "T112"),
(8, "2018-02-25", "2018-10-25", 8, 8, "T110");

INSERT INTO treatments(treatmentNo, name, price)
VALUES
("T110", "Traitement à la Penicilline", 50.00),
("T112", "Vaccination contre la grippe", 70.00),
("T113", "Basic exam", 20.00);










