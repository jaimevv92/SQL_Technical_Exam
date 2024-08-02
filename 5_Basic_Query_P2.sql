-- Basic Query - Part 2: Optimize the query for performance using indexes and other techniques

SELECT 
    s.survey_name, 
    q.question_text, 
    r.response_text
FROM 
    surveys s
JOIN 
    questions q ON s.survey_id = q.survey_id
JOIN 
    responses r ON q.question_id = r.question_id
WHERE 
    s.survey_name = 'Survey 1';

-- Logic Explanation:
-- 1. SELECT Clause:
--    - Retrieves the survey name, question text, and response text.
-- 2. FROM Clause:
--    - Specifies 'surveys' as the base table.
-- 3. JOIN Clauses:
--    - Joins 'surveys' with 'questions' using survey_id.
--    - Joins 'questions' with 'responses' using question_id.
-- 4. WHERE Clause:
--    - Filters the results to given survey named in this example 'Survey 1'.

-- Optimization Techniques:
-- 1. Indexes:
--    - Ensured indexes on 'survey_id' and 'question_id' in the 'surveys', 'questions', and 'responses' tables to optimize join performance.

-- Advanced Analysis Techniques:
-- 1. Data Integration:
--    - Combines data from multiple tables ('surveys', 'questions', and 'responses') to provide a comprehensive view of the survey data.
-- 2. Filtering:
--    - Focuses on a specific survey ('Survey 1') to enable targeted analysis of responses.
-- 3. Relationship Mapping:
--    - Uses foreign keys ('survey_id' and 'question_id') to join related data across different tables, ensuring data consistency and integrity.