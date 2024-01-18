
   
   
 SELECT *
FROM address;

SELECT *
FROM address
WHERE postal_code = 'A1E 4X8'AND address = '321 Last St';

   UPDATE address  -- update address
   SET address = '321 Last St'
   WHERE address = '123 Main St';
   
 
     UPDATE address    --update postal code
   SET postal_code = 'A1E 4X8'
   WHERE address_id IN (606, 607, 608, 609);
   




