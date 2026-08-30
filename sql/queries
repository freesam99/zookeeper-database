-- ============================================================
-- Zookeeper Database
-- queries.sql
-- Author: Samantha Freeland
--
-- Example SQL queries used to retrieve and analyze information
-- from the Zookeeper relational database.
-- ============================================================


-- ------------------------------------------------------------
-- Query 1
-- Retrieve animals and their habitat information for a zoo.
-- ------------------------------------------------------------
SELECT
    a.AnimalID,
    a.Name AS Animal_Name,
    h.HabitatID,
    h.Type AS Habitat_Type
FROM ANIMAL a
INNER JOIN HABITAT h
    ON a.Habitat_ID = h.HabitatID
WHERE a.Zoo_ID = 20;


-- ------------------------------------------------------------
-- Query 2
-- Identify selected primate species with iron deficiencies
-- in United States zoos and display diet information.
-- ------------------------------------------------------------
SELECT
    a.AnimalID,
    a.Name AS Animal_Name,
    s.Genus,
    m.Iron_Levels,
    d.Foods,
    d.Servings,
    z.City,
    z.Country
FROM ANIMAL a
INNER JOIN SPECIES s
    ON a.Species_ID = s.SpeciesID
INNER JOIN `MEDICAL MONITORING` m
    ON a.AnimalID = m.Animal_ID
INNER JOIN DIET d
    ON a.Diet_ID = d.DietID
INNER JOIN ZOO z
    ON a.Zoo_ID = z.ZooID
WHERE s.Genus IN (
    'Leontopithecus',
    'Mandrillus',
    'Cebus',
    'Alouatta',
    'Ateles',
    'Nasalis',
    'Macaca',
    'Saimiri',
    'Theropithecus',
    'Pan',
    'Pongo'
)
AND z.Country = 'United States';


-- ------------------------------------------------------------
-- Query 3
-- Examine species with high extinction probability.
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- Query 4
-- Display animals with species, zoo, and habitat information.
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- Query 5
-- Calculate average animal weight for Panthera species
-- by continent.
-- ------------------------------------------------------------



-- ------------------------------------------------------------
-- Query 6
-- Count animals by species and gender for species with
-- high extinction probability.
-- ------------------------------------------------------------
