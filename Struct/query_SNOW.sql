SELECT 
dimension_1,
dimension_2,
nvl(measure_1,0) AS measure_1,
nvl(measure_2,0)AS  measure_2
FROM(
	WITH q_map AS
	(
		SELECT correct_dimension_2, dimension_1 FROM MAP
		GROUP BY correct_dimension_2, dimension_1
	)
   ,q_ab AS
	(
		SELECT A.dimension_1,M.correct_dimension_2 dimension_2, nvl(A.measure_1,0) MEASURE, 'measure_1' NAME FROM q_map M
		JOIN A ON A.dimension_1 = M.dimension_1
			UNION ALL
		SELECT b.dimension_1,M.correct_dimension_2 dimension_2,nvl(b.measure_2,0) MEASURE, 'measure_2' NAME  FROM q_map M
		JOIN b ON b.dimension_1 = M.dimension_1
	)
SELECT * FROM q_ab
PIVOT (SUM(MEASURE) FOR NAME IN ('measure_1' AS measure_1, 'measure_2' AS measure_2))
)
ORDER BY dimension_1, dimension_2;