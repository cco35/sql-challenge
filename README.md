# Data Modeling, Engineering, and Analysis

## Project Summary

In this project, I worked as a Data Engineer at Pewlett Hackard, a fictional company, tasked with analyzing the employee database from the 1980s and 1990s. The project involved three main phases: data modeling, data engineering, and data analysis.

## Data Modeling

I inspected six CSV files containing employee data and sketched an Entity Relationship Diagram (ERD) using QuickDBD to visualize the table structure.

## Data Engineering

Using the provided information, I created table schemas for each CSV file. Key steps included:
- Defining columns with appropriate data types, primary keys, and foreign keys.
- Ensuring uniqueness and integrity constraints.
- Correctly ordering table creation to handle dependencies.
- Importing data from CSV files into SQL tables while accounting for headers.

## Data Analysis

For data analysis, I executed various SQL queries to extract insights from the database, such as:
- Listing employee details including employee number, last name, first name, sex, and salary.
- Identifying employees hired in 1986 and their hire dates.
- Listing department managers along with department details.
- Extracting employee department information and specific criteria matches.
- Calculating frequency counts of employee last names.

## Key Requirements and Evaluation

The project was evaluated based on adherence to requirements outlined in the assignment, including proper data modeling, engineering, and accurate data analysis.

## Tools Used

- pgadmin4 for database management and querying in PostgreSQL.
- QuickDBD for creating the Entity Relationship Diagram.

## Scalability and Future Improvements

This project lays the foundation for future data exploration and analysis within Pewlett Hackard's historical employee database. Further enhancements could include automation of data import processes and development of interactive dashboards for deeper insights.

## Repository Structure

- sql-challenge: Root directory containing project files.
  - Data: Directory for project-specific files.
    - ERD Diagram.png: Entity Relationship Diagram.
    - table-schema.sql: SQL script containing table schemas.
    - queries.sql: SQL script containing data analysis queries.

## Conclusion

This project showcases my ability to perform end-to-end data management tasks, from modeling to analysis, demonstrating proficiency in SQL and database management techniques.
