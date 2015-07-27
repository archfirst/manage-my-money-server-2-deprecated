SELECT   c.id              AS cat_id,
         c.name            AS cat_name,
         SUM(t.amount)     AS amount
FROM     transactions t
         LEFT OUTER JOIN categories c
                      ON t.category_id = c.id
WHERE  t.txn_date BETWEEN '2013-01-01 00:00:00Z' AND '2015-12-31 00:00:00Z'
GROUP BY c.id
ORDER BY amount DESC;
