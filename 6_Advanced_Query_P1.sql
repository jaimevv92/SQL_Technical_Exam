-- Advanced Query - Part 1: Write a query to calculate the average score for each survey, grouped by survey name.

SELECT 
    s.survey_name,  
    AVG(CAST(r.response_text AS DECIMAL)) AS average_score 
FROM 
    surveys s
JOIN 
    questions q ON s.survey_id = q.survey_id
JOIN 
    responses r ON q.question_id = r.question_id
GROUP BY 
    s.survey_name;

-- Logic Explanation:
-- 1. SELECT Clause:
--    - Retrieves the survey name and the calculated average response score.
--    - The response_text is cast to DECIMAL to perform numerical operations and calculate the average.
-- 2. FROM Clause:
--    - Specifies 'surveys' as the base table.
-- 3. JOIN Clauses:
--    - Joins 'questions' with 'surveys' using survey_id.
--    - Joins 'responses' with 'questions' using question_id.
-- 4. GROUP BY Clause:
--    - Groups by survey_name to compute the average score per survey as solicited in the problem.

-- Optimization Techniques:
-- 1. Indexes:
-- - Ensured 'survey_id' and 'question_id' columns are properly indexed to optimize join performance.

-- 2. WHERE clause:
-- - By removing the redundant 'WHERE' clause, the query should perform more efficiently.

-- Advanced Analysis Techniques:
-- 1. Aggregation:
--    - AVG function calculates the average response score for each survey, providing a statistical measure of survey performance.

-- Performance Considerations:
-- 1. Join Efficiency:
--    - Ensure joins are optimized with appropriate indexes.
-- 2. Aggregation Cost:
--    - Aggregation operations like AVG can be resource-intensive. Ensure proper indexing and consider summary tables for large datasets.
-- 3. Data Size:
--    - For large datasets, consider table partitioning or precomputed summary tables to improve performance.
