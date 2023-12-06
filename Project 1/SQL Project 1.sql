/* Ilham Rayhan*/
/* Data Cleaning for automobile_data.csv */

/* Check Fuel Type */
SELECT  distinct(fuel_type)
FROM `molten-sandbox-407303.automobile_data.car_info`

/* Check Min and Max Length */
SELECT
  MIN(length) AS min_length,
  MAX(length) AS max_length
FROM
  `molten-sandbox-407303.automobile_data.car_info`

/* Check Null Data */
SELECT
  *
FROM
  `molten-sandbox-407303.automobile_data.car_info`
WHERE 
  num_of_doors IS NULL;

/* Update Null Value */
UPDATE
  `molten-sandbox-407303.automobile_data.car_info`
SET
  num_of_doors = "four"
WHERE
  num_of_doors IS NULL;

/* Identify Potential Error in num_of_cylinders  */
SELECT
  DISTINCT num_of_cylinders
FROM
  `molten-sandbox-407303.automobile_data.car_info`

/* Update Error Value */
UPDATE
  `molten-sandbox-407303.automobile_data.car_info`
SET
  num_of_cylinders = "two"
WHERE
  num_of_cylinders = "tow";

/* Identify Potential Error in compression_ratio */
SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  `molten-sandbox-407303.automobile_data.car_info`

/* Identify Number of Error in compression_ratio */
SELECT
   COUNT(*) AS num_of_rows_to_delete
FROM
   `molten-sandbox-407303.automobile_data.car_info`
WHERE
   compression_ratio = 70;

/* Delete Error in compression_ratio */
DELETE `molten-sandbox-407303.automobile_data.car_info`
WHERE compression_ratio = 70;

/* Identify Potential Error in drive_wheels */
SELECT
  DISTINCT drive_wheels
FROM
  `molten-sandbox-407303.automobile_data.car_info`

/* Identify Potential Error in drive_wheels */
SELECT
  DISTINCT drive_wheels,
  LENGTH(drive_wheels) AS string_length
FROM
   `molten-sandbox-407303.automobile_data.car_info`

/* Update Error Value */
UPDATE
  `molten-sandbox-407303.automobile_data.car_info`
SET
  drive_wheels = TRIM(drive_wheels)
WHERE TRUE;
