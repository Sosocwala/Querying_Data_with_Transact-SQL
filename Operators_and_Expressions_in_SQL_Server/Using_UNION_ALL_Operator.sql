CREATE TABLE Set1 (Col1 CHAR(1))
INSERT INTO Set1
VALUES ('A'), ('B'), ('C')

CREATE TABLE Set2 (Col1 CHAR(1))
INSERT INTO Set2
VALUES ('X'), ('Y'), ('Z')
  
SELECT *
FROM Set1
UNION ALL --Using the ALL alows duplicate to be presented
SELECT *
FROM Set2
