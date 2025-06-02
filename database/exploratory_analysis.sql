use palworld_database;
-- a. Distribution de la taille des Pals
SELECT Size, COUNT(*) AS count
FROM hidden_attribute
GROUP BY Size;

-- b. Distribution de la catégorie des Pals
SELECT GenusCategory, COUNT(*) AS count
FROM combat_attribute
group by GenusCategory
order by count desc;

-- c. Distribution des points de vie des Pals
SELECT HP, COUNT(*) AS count
FROM hidden_attribute
GROUP BY HP
ORDER BY HP desc;

-- d. Distribution de la rareté des Pals
SELECT rarity, COUNT(*) AS count
FROM combat_attribute
GROUP BY rarity
ORDER BY rarity;

-- e. Distribution de la consommation alimentaire
SELECT FoodAmount, COUNT(*) AS count
FROM hidden_attribute
GROUP BY FoodAmount;

-- f. Pals offrant des produits utiles au ranch (lait, œuf, laine, etc.)
SELECT id, `English name`, `ranch items`
FROM job_skill
WHERE `ranch items` <> 'no' 
  AND `ranch items` NOT IN ('', 'None');

-- g. Distribution de la puissance de combat + top 10
SELECT `code name`, `Remote attack`, `melee attack`, defense, (`Remote attack`+ `melee attack`+ defense) AS combat_power
FROM hidden_attribute
ORDER BY combat_power DESC
LIMIT 10;


-- j. Rareté moyenne des Pals avec les plus hauts niveaux d'attaque
SELECT AVG(rarity) AS avg_rarity
FROM (
  SELECT rarity
  FROM combat_attribute
  ORDER BY `Remote attack` DESC
  LIMIT 10
) AS top_attack;

	

-- n. Compétences de travail les plus répandues
SELECT 'Make a fire' AS skill, SUM(`Make a fire`) AS total FROM job_skill
UNION ALL
SELECT 'watering', SUM(watering) FROM job_skill
UNION ALL
SELECT 'planting', SUM(planting) FROM job_skill
UNION ALL
SELECT 'generate electricity', SUM(`generate electricity`) FROM job_skill
UNION ALL
SELECT 'manual', SUM(manual) FROM job_skill
UNION ALL
SELECT 'collection', SUM(collection) FROM job_skill
UNION ALL
SELECT 'logging', SUM(logging) FROM job_skill
UNION ALL
SELECT 'Mining', SUM(Mining) FROM job_skill
UNION ALL
SELECT 'pharmaceutical', SUM(pharmaceutical) FROM job_skill
UNION ALL
SELECT 'cool down', SUM(`cool down`) FROM job_skill
UNION ALL
SELECT 'pasture', SUM(pasture) FROM job_skill
UNION ALL
SELECT 'carry', SUM(carry) FROM job_skill
ORDER BY total DESC
LIMIT 5;


-- o. Compétences de travail les moins répandues
SELECT 'Make a fire' AS skill, SUM(`Make a fire`) AS total FROM job_skill
UNION ALL
SELECT 'watering', SUM(watering) FROM job_skill
UNION ALL
SELECT 'planting', SUM(planting) FROM job_skill
UNION ALL
SELECT 'generate electricity', SUM(`generate electricity`) FROM job_skill
UNION ALL
SELECT 'manual', SUM(manual) FROM job_skill
UNION ALL
SELECT 'collection', SUM(collection) FROM job_skill
UNION ALL
SELECT 'logging', SUM(logging) FROM job_skill
UNION ALL
SELECT 'Mining', SUM(Mining) FROM job_skill
UNION ALL
SELECT 'pharmaceutical', SUM(pharmaceutical) FROM job_skill
UNION ALL
SELECT 'cool down', SUM(`cool down`) FROM job_skill
UNION ALL
SELECT 'pasture', SUM(pasture) FROM job_skill
UNION ALL
SELECT 'carry', SUM(carry) FROM job_skill
ORDER BY total asc
LIMIT 5;


-- s. Pals avec la vitesse de travail la plus élevée
SELECT `code name`, (`walking speed`+`running speed`+`Riding sprint speed`) as pal_speed
FROM hidden_attribute
order by pal_speed desc;
