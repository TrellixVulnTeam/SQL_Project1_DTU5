-- Update the toy with the name of "Cheetos" to have a name of "Pooky"
UPDATE toys
SET name = 'Pooky'
WHERE cat_id IN (SELECT id FROM cats WHERE name = 'Garfield');

--This also works to change the name but is less specific and could cause problems if there were multiple records with the same value.
--UPDATE toys
--SET name = 'Pooky'
--WHERE name = 'Cheetos';