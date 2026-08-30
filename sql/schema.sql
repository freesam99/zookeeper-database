-- ============================================================
-- Zookeeper Database
-- schema.sql
-- Author: Samantha Freeland
--
-- Relational database for managing zoos, animals, species,
-- habitats, diets, medical monitoring, and endangerment data.
-- ============================================================


-- ------------------------------------------------------------
-- ZOO
-- Stores information about each zoo.
-- ------------------------------------------------------------

CREATE TABLE ZOO (
    ZooID INT NOT NULL,
    Zoo_Name CHAR(225) NOT NULL,
    Continent CHAR(50) NOT NULL,
    Country CHAR(100) NOT NULL,
    State INT NOT NULL,
    City INT NOT NULL,

    PRIMARY KEY (ZooID)
);


-- ------------------------------------------------------------
-- SPECIES
-- Stores species classification information.
-- ------------------------------------------------------------

CREATE TABLE SPECIES (
    SpeciesID INT NOT NULL,
    Genus CHAR(100) NOT NULL,
    Common_Name CHAR(100) NOT NULL,

    PRIMARY KEY (SpeciesID)
);


-- ------------------------------------------------------------
-- DIET
-- Stores diet information used for animals.
-- ------------------------------------------------------------

CREATE TABLE DIET (
    DietID INT NOT NULL,
    Diet_Type CHAR(50) NOT NULL,
    Foods CHAR(50) NOT NULL,
    Servings INT NOT NULL,

    PRIMARY KEY (DietID)
);


-- ------------------------------------------------------------
-- HABITAT
-- Stores habitat characteristics for each zoo.
-- ------------------------------------------------------------

CREATE TABLE HABITAT (
    HabitatID INT NOT NULL,
    Zoo_ID INT NOT NULL,
    Type CHAR(50) NOT NULL,
    Vegetation CHAR(100) NOT NULL,
    Substrate CHAR(100) NOT NULL,
    ClimateControl TINYINT(1) NOT NULL,
    Enrichment CHAR(100) NOT NULL,

    PRIMARY KEY (HabitatID),

    FOREIGN KEY (Zoo_ID)
        REFERENCES ZOO(ZooID)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);


-- ------------------------------------------------------------
-- ANIMAL
-- Stores individual animal records and connects each animal
-- to its species, zoo, diet, and habitat.
-- ------------------------------------------------------------

CREATE TABLE ANIMAL (
    AnimalID INT NOT NULL,
    Name CHAR(225) NOT NULL,
    Gender CHAR(10) NOT NULL,
    Age INT NOT NULL,
    Species_ID INT NOT NULL,
    Zoo_ID INT NOT NULL,
    Diet_ID INT NOT NULL,
    Habitat_ID INT NOT NULL,

    PRIMARY KEY (AnimalID),

    FOREIGN KEY (Species_ID)
        REFERENCES SPECIES(SpeciesID)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,

    FOREIGN KEY (Zoo_ID)
        REFERENCES ZOO(ZooID)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,

    FOREIGN KEY (Diet_ID)
        REFERENCES DIET(DietID)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,

    FOREIGN KEY (Habitat_ID)
        REFERENCES HABITAT(HabitatID)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);


-- ------------------------------------------------------------
-- MEDICAL MONITORING
-- Stores medical monitoring records associated with animals.
-- ------------------------------------------------------------

CREATE TABLE `MEDICAL MONITORING` (
    RecordID INT NOT NULL,
    Animal_ID INT NOT NULL,
    Iron_Levels DECIMAL(10,0) NOT NULL,
    Dietary_Adjustments CHAR(50) NOT NULL,

    PRIMARY KEY (RecordID),

    FOREIGN KEY (Animal_ID)
        REFERENCES ANIMAL(AnimalID)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);


-- ------------------------------------------------------------
-- ENDANGERMENT STATISTICS
-- Stores conservation and extinction-risk information
-- associated with species.
-- ------------------------------------------------------------

CREATE TABLE `ENDANGERMENT STATISTICS` (
    EndangermentID INT NOT NULL,
    Species_ID INT NOT NULL,
    Protection_Status CHAR(50) NOT NULL,
    Extinction_Probability DECIMAL(10,0) NOT NULL,
    Expected_extinction_Year YEAR NOT NULL,

    PRIMARY KEY (EndangermentID),

    FOREIGN KEY (Species_ID)
        REFERENCES SPECIES(SpeciesID)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);
