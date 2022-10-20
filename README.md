# Project Description
Create a database for a digital platform that hosts artists’ work, the platform offers a chance for artists to market their work by displaying their talents. 

# Objectives
- Design a basic database system
- Implement the database design
- Interact with the database by inserting data

# Technology & Software
- Microsoft SQL Server
- SQL Server Management Studio

# Project Structures
## Task 1: Able to identify the entities in project description
Identify Entities:
 - Artist
 - Work
 - Review
 - Reviewer
 
 
## Task 2: Able to identify attributes and their data types from a description
Identify Attributes:
 * Artist => artistID, artistName, DOB, artistTitle
 * Work => workID, workName, workLink, workDescription
 * Reviewer => reviewerID, DOB, reviewerTitle, reviewerName
 * Review => reviewID, reviewComment, reviewRating
 
## Task 3: Able to analyze the description and extract the relations between the entities
Identify Data Type:
 * Artist:
 *  artistID => CHAR(5) with 'AR' and three random numbers 
 *  artistName => VARCHAR(20) 
 *  DOB => DATE 
 *  artistTitle => VARCHAR(50)
 
 
 * Work:
 *  workID => CHAR(5) with 'WK' and three random numbers
 *  workName => VARCHAR(20)
 *  workLink => VARCHAR(50)
 *  workDescription => VARCHAR(100)
 
 
 * Reviewer:
 *  reviewerID => CHAR(5) with 'RR' and three random numbers 
 *  DOB => DATE 
 *  reviewerTitle => VARCHAR(50)
 *  reviewerName => VARCHAR(20)
 
 
 * Review:
 *  reviewID => CHAR(5) with 'RW' and three random numbers 
 *  reviewComment => VARCHAR(255)
 *  reviewRating => INT (only 1-5) 
 
## Task 4: Able to create a database and tables in the database

## Task 5: Able to populate a database through SQL insert statements 
