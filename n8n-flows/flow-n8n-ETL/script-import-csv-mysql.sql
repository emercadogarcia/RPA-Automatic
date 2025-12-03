-- importante en la conexion:

Finally, click on the Advanced tab and provide an extra line in the Others text input: OPT_LOCAL_INFILE=1. This is important for uploading data from a local CSV file.
--- agregar ese texto


LOAD DATA LOCAL INFILE 'C:/<PATH TO YOUR FILE>/concerts-2023.csv' 
INTO TABLE concerts2 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (`Date`,`Band`,`ConcertName`,`Country`,`City`,`Location`,`LocationAddress`);