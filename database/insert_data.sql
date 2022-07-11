-- RESTAURANTS
INSERT INTO Restaurant VALUES (1, "Sample Restaurant", "16 Turk St.", "94102", "San Francisco", "USA");

-- FOODS
-- sample food 1 with 10g's of protein, fat, and carbs in every 100g
-- AND middle in terms of flavor
INSERT INTO Food VALUES (1001, "Sample Food 1", "URL sample", "10,10,10", "5, 5, 5, 5, 5, 5");
INSERT INTO Food VALUES (1002, "Sample Food 2", "URL sample", "15,15,15", "7, 7, 7, 7, 7, 7");

-- INGREDIENTS
INSERT INTO Ingredient VALUES (2001, "Ginger");
INSERT INTO Ingredient VALUES (2002, "Garlic");
INSERT INTO Ingredient VALUES (2003, "Green Onion");

-- INSERTING FOOD IN RESTAURANT MENU
INSERT INTO RestaurantFood VALUES (1, 1001);
INSERT INTO RestaurantFood VALUES (1, 1002);

-- INSERTING INGREDIENT IN FOOD
INSERT INTO FoodIng VALUES (1001, 2001);
INSERT INTO FoodIng VALUES (1001, 2002);
INSERT INTO FoodIng VALUES (1001, 2003);

INSERT INTO FoodIng VALUES (1002, 2001);
INSERT INTO FoodIng VALUES (1002, 2002);
INSERT INTO FoodIng VALUES (1002, 2003);