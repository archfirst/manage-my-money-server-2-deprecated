SELECT   date_part('year', t.txn_date AT TIME ZONE 'UTC')  AS year,
         date_part('month', t.txn_date AT TIME ZONE 'UTC') AS month,
         SUM(t.amount)                                     AS amount
FROM     transactions t
WHERE  t.txn_date BETWEEN '2013-01-01 00:00:00Z' AND '2015-12-31 00:00:00Z'
GROUP BY year, month
ORDER BY year, month;
