-- How many staff are there in all the UK stores 
SELECT SUM(staff_numbers) 
FROM 
     dim_store 
WHERE 
     country_code IN ('GB');