-- Let's add a record to the table
INSERT INTO transactions (transaction_date, amount, fee) 
VALUES('2018-09-24', 5454, '30');

-- Doublecheck the contents
SELECT *
FROM transactions;


-- Calculate the net amount as amount + fee
SELECT transaction_date, CAST(amount AS integer) + CAST(fee AS integer) AS net_amount 
FROM transactions;


