-- View: Create a view that displays the survey name, question text, response text, and calculated score for each response

CREATE VIEW SurveyResponseScores AS
SELECT 
    s.survey_name,
    q.question_text,
    r.response_text,
    CASE r.response_text
        -- Assign scores based on response text, this is based in a grade on a scale from 1 t0 10
        WHEN '1' THEN 2  -- Score for response '1' is 2 points
        WHEN '2' THEN 4  -- Score for response '2' is 4 points
        WHEN '3' THEN 6  -- Score for response '3' is 6 points
        WHEN '4' THEN 8  -- Score for response '4' is 8 points
        WHEN '5' THEN 10  -- Score for response '5' is 10 points
        ELSE 0  -- Score for any other response is 0 points
    END AS calculated_score  -- Computed score for each response
FROM 
    surveys s
JOIN 
    questions q ON s.survey_id = q.survey_id
JOIN 
    responses r ON q.question_id = r.question_id;
