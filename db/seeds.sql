INSERT INTO department (name) VALUES
    ("Finance"),
    ("Legal"),
    ("Information Technology"),
    ("Marketing"),
    ("Operations"),
    ("Sales"),
    ("Human Resources");

INSERT INTO role (title, salary, department_id) VALUES
    ("Director", 140000.00, 1),
    ("Director", 140000.00, 2),
    ("Director", 140000.00, 3),
    ("Director", 120000.00, 4),
    ("Director", 110000.00, 5),
    ("Director", 100000.00, 6),
    ("Director", 100000.00, 7),
    ("Manager", 100000.00, 1),
    ("Manager", 100000.00, 2),
    ("Manager", 100000.00, 3),
    ("Manager", 95000.00, 4),
    ("Manager", 80000.00, 5),
    ("Manager", 80000.00, 6),
    ("Manager", 80000.00, 7),
    ("Senior Staff", 95000.00, 1),
    ("Senior Staff", 95000.00, 2),
    ("Senior Staff", 95000.00, 3),
    ("Senior Staff", 90000.00, 4),
    ("Senior Staff", 65000.00, 5),
    ("Senior Staff", 65000.00, 6),
    ("Senior Staff", 65000.00, 7),
    ("Staff", 80000.00, 1),
    ("Staff", 80000.00, 2),
    ("Staff", 80000.00, 3),
    ("Staff", 75000.00, 4),
    ("Staff", 60000.00, 5),
    ("Staff", 60000.00, 6),
    ("Staff", 60000.00, 7);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    -- Directors
    ("Bob","Parkson", 1, NULL),
    ("Herodias","Achim", 2, NULL),
    ("Krawczyk","Kidist", 3, NULL),
    ("Chizoba","Rusnak", 4, NULL),
    ("Neven","Dijana", 5, NULL),
    ("Nosek","Zebedee", 6, NULL),
    ("Tau","Mwangi", 7, NULL),
    -- Managers
    ("Enos","Anastazja", 8, 1),
    ("Kacper","Hipolit", 9, 2),
    ("Grbic","Hartwig", 10, 3),
    ("Yitro","Jez", 11, 4),
    ("Umaru","Horsa", 12, 5),
    ("Filipek","Davorka", 13, 6),
    ("Sheba","Daniel", 14, 7),
    /* Senior Staff */
    ("Boleslawa","Zodwa", 15, 8),
    ("Marek","Thando", 16, 9),
    ("Mamadu","Gomolka", 17, 10),
    ("Malgorzata","Prochorus", 18, 11),
    ("Botha","Malaika", 19, 12),
    ("Pavlovic","Momi", 20, 13),
    ("Benedykta","Niemczyk", 21, 14),
    -- Staff
    ("Adelina","Filip", 22, 8),
    ("Lo","Karabo", 23, 9),
    -- IT Staff
    ("Yotam","Ruan", 24, 10),
    ("Witold","Oluwaseun", 24, 10),
    ("Kijek","Malina", 24, 10),
    -- Marketing Staff
    ("Ami","He", 25, 11),
    ("Terach","Atanasija", 25, 11),
    -- Operations Staff
    ("Wasilewski","Suncica", 26, 12),
    ("Veselin","Poplawski", 26, 12),
    ("Iolana","Zdravko", 26, 12),
    ("Tang","'Uriy'el", 26, 12),
    -- Sales Staff
    ("Konjit","Michalski", 27, 13),
    ("Goda","Gisbert", 27, 13),
    ("Kralj","Bet'uel", 27, 13),
    -- HR staff
    ("Phanuel","Kayode", 28, 14);
