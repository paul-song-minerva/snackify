CREATE TABLE Restaurant (
    RESTID INTEGER PRIMARY KEY,
    RNAME VARCHAR(50),
    STREET VARCHAR(50),
    ZIPCODE VARCHAR(10),
    CITY VARCHAR(20),
    COUNTRY VARCHAR(20)
);

CREATE TABLE Food (
    FOODID INTEGER PRIMARY KEY,
    FNAME VARCHAR(50),
    RECIPEURL VARCHAR(1000),
    NUTRITION VARCHAR(50),
    -- maybe a string with amount of protein, fat, and carbs for every 100g?
    -- or a different table but not sure
    FLAVOR VARCHAR(50)
    -- similar to nutrition, numbers separated by commas to indicate level of spice, saltiness, etc.
    -- or a different table
);

CREATE TABLE Ingredient (
    INGID INTEGER PRIMARY KEY,
    INAME VARCHAR(50)
);

-- this is called a joiner table and it allows for multiple restaurants to have multiple food and vice versa
CREATE TABLE RestaurantFood (
    RFID INTEGER PRIMARY KEY,
    FOREIGN KEY (RESTID) REFERENCES Restaurant(RESTID),
    FOREIGN KEY (FOODID) REFERENCES Food(FOODID)
);

-- also a joiner table, same function as table above
CREATE TABLE FoodIng (
    FIID INTEGER PRIMARY KEY,
    FOREIGN KEY (FOODID) REFERENCES Food(FOODID),
    FOREIGN KEY (INGID) REFERENCES Ingredient(INGID)
);