-- Advanced Query - Part 2: Write a query to find the top 3 users with the highest average response score across all surveys.

SELECT 
    u.user_first_name,  
    u.user_last_name,     
    AVG(CAST(r.response_text AS DECIMAL)) AS average_response_score  
FROM 
    responses r  
JOIN 
    users u ON r.user_id = u.user_id  
GROUP BY 
    u.user_id,            
    u.user_first_name,    
    u.user_last_name       
ORDER BY 
    average_response_score DESC  
LIMIT 3;

-- Logic Explanation:
-- 1. SELECT Clause:
--    - Retrieves user's first name, last name, email, and the calculated average response score.
-- 2. FROM Clause:
--    - Specifies the 'responses' table as the main table.
-- 3. JOIN Clause:
--    - Joins the 'responses' table with the 'users' table on 'user_id'.
-- 4. GROUP BY Clause:
--    - Groups the results by user_id, first name, last name, and email to calculate the average response score for each user.
-- 5. ORDER BY Clause:
--    - Orders the users by their average response score in descending order.
-- 6. LIMIT Clause:
--    - Limits the output to the top 3 users with the highest average response score.

-- Optimization Techniques:
-- 1. Indexes:
--    - Ensured 'user_id' columns in both 'responses' and 'users' tables are indexed to optimize join performance.

-- Advanced Analysis Techniques:
-- 1. Aggregation:
--    - Using AVG function to calculate the average response score provides a statistical measure of user responses.
-- 2. Ranking:
--    - Using LIMIT to identify and rank the top users based on their average response score.

-- Performance Considerations:
-- 1. Join Efficiency:
--    - Ensure joins are optimized with appropriate indexes.
-- 2. Aggregation Cost:
--    - Aggregation operations like AVG can be resource-intensive. Ensure proper indexing and consider summary tables for large datasets.
-- 3. Data Size:
--    - For large datasets, consider table partitioning or precomputed summary tables to improve performance.
