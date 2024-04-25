SELECT
    NEIGHBORHOOD,
    COUNT(*) AS hydrant_count,
    COUNT(*) / total_hydrants.total_count AS hydrant_density
FROM
     HAORAN.PUBLIC.FINALPROJECTWANG
CROSS JOIN
    (SELECT COUNT(*) AS total_count FROM  HAORAN.PUBLIC.FINALPROJECTWANG) AS total_hydrants
GROUP BY
    NEIGHBORHOOD, total_hydrants.total_count;
