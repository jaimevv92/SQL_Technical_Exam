-- Basic Query - Part 1: Write a query to retrieve all responses for a given survey, including survey name, question text, and response text

SELECT 
    s.survey_name, 
    q.question_text, 
    r.response_text
FROM 
    surveys s,
    questions q,
    responses r
WHERE 
    s.survey_id = q.survey_id 
    AND q.question_id = r.question_id 
    AND s.survey_name = 'Survey 1';

-- Logic Explanation:
-- 1. SELECT Clause:
--    - Retrieves the survey name, question text, and response text.
-- 2. FROM Clause:
--    - Specifies the 'surveys', 'questions', and 'responses' tables.
-- 3. WHERE Clause:
--    - Joins the 'surveys' table with the 'questions' table on 'survey_id'.
--    - Joins the 'questions' table with the 'responses' table on 'question_id'.
--    - Filters the results to only include responses for the survey named 'Survey 1'.

-- Advanced Analysis Techniques:
-- 1. Data Integration:
--    - Combines data from multiple tables ('surveys', 'questions', and 'responses') to provide a comprehensive view of the survey data.
-- 2. Filtering:
--    - Filters data to focus on a specific survey ('Survey 1'), enabling targeted analysis of responses.
-- 3. Relationship Mapping:
--    - Uses foreign keys ('survey_id' and 'question_id') to join related data across different tables, ensuring data consistency and integrity.