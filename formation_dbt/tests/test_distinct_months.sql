WITH months AS (
    SELECT DISTINCT EXTRACT(MONTH FROM tpep_dropoff_datetime) AS month
    FROM {{ ref('transform') }}
)

SELECT COUNT(*) 
FROM months
HAVING COUNT(*) <> 12
