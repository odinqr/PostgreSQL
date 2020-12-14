'''sql

--Запрос 1
SELECT COUNT(result) FROM exam_results;

--Запрос 2
SELECT AVG(result) FROM exam_results;

--Запрос 3
SELECT *
FROM exam_results
WHERE result = (SELECT MIN(result) FROM exam_results)
UNION ALL
SELECT *
FROM exam_results
WHERE result = (SELECT MAX(result) FROM exam_results);

--Запрос 4
SELECT AVG(result) is_citizen 
FROM exam_results 
WHERE is_citizen IN (SELECT is_citizen FROM exam_results WHERE is_citizen IN (true))
UNION ALL
SELECT AVG(result) is_citizen 
FROM exam_results 
WHERE is_citizen IN (SELECT is_citizen FROM exam_results WHERE is_citizen IN (false));

--Запрос 5
SELECT MIN(result), AVG(result), MAX(result), extract(year from birthday) as date 
FROM exam_results group by date order by date asc;

--Запрос 6
SELECT * FROM exam_results WHERE fullname like '%Олег%'
UNION ALL
SELECT * FROM exam_results WHERE length(fullname) >= 20
ORDER BY birthday desc;

--Запрос 7
SELECT * FROM exam_results where result >= (SELECT AVG(result) FROM exam_results);

--Запрос 8
SELECT * FROM exam_results ORDER BY result desc LIMIT 3;


