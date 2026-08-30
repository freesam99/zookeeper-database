# Zookeeper Relational Database

A relational database project designed to manage and analyze information about zoos, animals, species, habitats, diets, medical monitoring, and endangered species.

The project demonstrates relational database design, normalization, SQL querying, relational algebra, and database-driven application development.

## Technologies & Concepts

- MySQL
- SQL
- PHP
- Relational Database Design
- Entity-Relationship (ER) Modeling
- Database Normalization (1NF, 2NF, 3NF)
- Relational Algebra
- Primary and Foreign Keys
- SQL Joins
- Aggregate Functions
- GROUP BY
- Data Filtering

## Database Structure

The database consists of seven primary tables:

- `ZOO` – stores zoo and location information
- `ANIMAL` – stores individual animal records
- `SPECIES` – stores species classification information
- `HABITAT` – stores habitat characteristics
- `DIET` – stores animal diet information
- `MEDICAL MONITORING` – stores animal medical monitoring records
- `ENDANGERMENT STATISTICS` – stores species conservation and extinction-risk information

Relationships between the tables allow animal records to be connected to their zoo, habitat, species, diet, medical records, and species-level endangerment statistics.

## Database Design

An Entity-Relationship (ER) model was created to define entities, attributes, relationships, and cardinality before database implementation.

The design includes relationships such as:

- Zoos containing multiple animals and habitats
- Animals belonging to a species
- Animals being assigned to habitats and diets
- Animals having medical monitoring records
- Species having endangerment statistics

See the ER diagram in the project documentation for the complete database model.

## Normalization

The relational schema was evaluated through:

- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)

Functional dependencies were identified for each relation to evaluate redundancy and dependency relationships within the database design.

See the normalization documentation for the complete functional dependency analysis.

## SQL Queries

The `sql/queries.sql` file contains example queries demonstrating multi-table analysis across the database.

Examples include:

1. Retrieving animals and their habitat information for a particular zoo
2. Examining primate species in United States zoos along with medical and diet information
3. Identifying animals belonging to species with high extinction probability
4. Combining animal, species, zoo, and habitat information
5. Counting animals in the genus *Panthera* by continent
6. Counting animals by species and gender for species with high extinction probability

These queries demonstrate SQL concepts including:

- `INNER JOIN`
- `WHERE`
- `IN`
- `COUNT()`
- `GROUP BY`
- Column aliases
- Multi-table relationships

## Relational Algebra

Relational algebra expressions were developed as part of the database design and query-planning process.

The relational algebra documentation demonstrates operations including:

- Selection
- Projection
- Joins
- Filtering
- Aggregation

## Repository Structure

```text
zookeeper-database/
│
├── README.md
│
├── sql/
│   ├── schema.sql
│   └── queries.sql
│
├── documentation/
│   ├── ER_Diagram.pdf
│   ├── Normalization_3NF.pdf
│   ├── Schema_Architecture.pdf
│   └── Relational_Algebra.pdf
│
└── php/
    └── PHP interface files
