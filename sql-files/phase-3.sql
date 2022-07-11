-- Find Hermione's cats

SELECT * FROM cats                   -- selects all cats from the cats table 
JOIN cat_owners ON cats.id = cat_id  -- joins cats to the join table
JOIN owners ON owners.id= owner_id   -- joins the owners table to the join table
WHERE owner_id = 7;                  -- Displays cats belonging to owner 7

-- Find All the Toys for Hermione's cats
SELECT * FROM cats                              -- selects all cats from the cats table
JOIN cat_owners ON cats.id = cat_owners.cat_id  -- joins cats to the join table
JOIN owners ON owners.id= owner_id              -- joins the owners table to the join table
JOIN toys ON toys.cat_id = cats.id              -- joins the toys table to the cats table
WHERE owner_id = 7;                             -- displays all toys belonging to cats that belong to owner 7 which is Hermoine.