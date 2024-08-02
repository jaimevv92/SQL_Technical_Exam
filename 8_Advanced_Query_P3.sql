-- Advanced Query - Part 3: Write a query to determine the distribution of responses for each question in a specific survey (e.g., count of each response).

SELECT 
    q.question_id,
    q.question_text,
    r.response_text AS response,
    COUNT(*) AS response_count
FROM 
    questions q
JOIN 
    responses r ON q.question_id = r.question_id
WHERE 
    q.survey_id = 1
GROUP BY 
    q.question_id,
    q.question_text,
    r.response_text
ORDER BY
	q.question_id,
	response_count DESC;

-- Logic Explanation:
-- 1. SELECT Clause:
--    - Retrieves the question ID, question text, response text (aliased as 'response'), and the count of each response (aliased as 'response_count').
-- 2. FROM Clause:
--    - Specifies 'questions' as the base table.
-- 3. JOIN Clause:
--    - Joins 'questions' with 'responses' using question_id.
-- 4. WHERE Clause:
--    - Filters to include only questions for the survey with ID 1.
-- 5. GROUP BY Clause:
--    - Groups by question ID, question text, and response text to aggregate response counts for each combination.
-- 6. ORDER BY Clause:
--    - Orders results first by question ID, then by response count in descending order to rank responses by frequency within each question.

-- Optimization Techniques:
-- 1. Indexes:
--    - Ensured indexes on 'question_id' in both 'questions' and 'responses' tables to optimize join performance.
--    - Ensured an index on 'survey_id' in the 'questions' table to speed up filtering.
-- 2. Data Filtering:
--    - The WHERE clause filters data early, reducing the number of rows involved in the joins and aggregations, which improves query performance.

-- Advanced Analysis Techniques:
-- 1. Aggregation:
--    - Uses the COUNT function to calculate the number of responses for each question and response combination, providing insight into response distribution.
-- 2. Detailed Data Retrieval:
--    - Retrieves detailed information for each question, including the text of the question and the responses, allowing for comprehensive analysis.
-- 3. Sorting and Ranking:
--    - Orders results by question ID and response count to rank responses by their frequency, facilitating the identification of the most common responses.

-- Performance Considerations:
-- 1. Index Usage:
--    - Proper indexing on join columns and filter columns is crucial for efficient query execution. Verify that indexes are used by examining the EXPLAIN output.
-- 2. Data Volume:
--    - For large datasets, ensure the database server has adequate resources (CPU, memory) to handle the aggregation and sorting operations efficiently.
-- 3. Query Complexity:
--    - The GROUP BY and ORDER BY clauses can be resource-intensive, especially with large datasets. Consider optimizing these operations or using summary tables for frequent queries.