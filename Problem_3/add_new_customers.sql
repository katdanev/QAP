SELECT *
FROM address;

SELECT *
FROM customer
WHERE last_name = 'Danevych';  --add new 4 customers

INSERT INTO customer (store_id, first_name, last_name, email, address_id)
   VALUES
   ( 2, 'Kateryna', 'Danevych', 'dd@od.dd',  605 ),
   ( 2, 'Oleksandr', 'Danevych', 'dd@dfdd.dd',  605 ),
   ( 2, 'Tymofii', 'Danevych', 'ddsdad@dd.dd',  605 ),
   ( 2, 'Solomiia', 'Danevych', 'dd@dsdsfd.dd',  605 );
   
   
 

