-- Find the first owner that has a last name containing the lowercase letter "r"
SELECT * FROM owners
WHERE last_name LIKE('%r%') LIMIT 1;

-- Find the name and birth year of all the cats ordered by descending birth year
SELECT name, birth_year FROM cats
ORDER BY birth_year DESC;

-- Find the name of the cats who have an owner whose first name begins with an "H"
SELECT first_Name, cats.name FROM owners
JOIN cat_owners ON owners.id = cat_owners.owner_id
JOIN cats ON cat_owners.cat_id = cats.id
WHERE first_name LIKE('H%');

-- Find the first and last names of the owner 
--whose cats are born after the year 2015
SELECT first_Name, last_name FROM owners
JOIN cat_owners ON owners.id = cat_owners.owner_id
JOIN cats ON cat_owners.cat_id = cats.id
WHERE birth_year > 2015
ORDER BY birth_year DESC;

-- Find names of the cats whose owners are both
--George Beatty and Melynda Abshire, or just George Beatty, 
--or just Melynda Abshire
SELECT first_Name, last_name, cats.name FROM owners
JOIN cat_owners ON owners.id = cat_owners.owner_id
JOIN cats ON cat_owners.cat_id = cats.id
WHERE first_name IN('George','Melynda') 
AND last_name IN('Beatty','Abshire');