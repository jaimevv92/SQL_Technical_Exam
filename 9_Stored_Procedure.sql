-- Stored Procedures: Create a stored procedure to score survey results based on a given scoring algorithm.

DELIMITER //

CREATE PROCEDURE CalculateSurveyScore(IN surveyID INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE responseText VARCHAR(255);
    DECLARE responseWeight DECIMAL(10, 2);
    DECLARE totalScore DECIMAL(10, 2) DEFAULT 0;
    DECLARE scoreCategory VARCHAR(20);

    -- Declare a cursor to iterate over each response for the given survey
    -- Assign weights to responses, this weight is based on a grade from 1 to 10:
    -- '1' → 2
    -- '2' → 4
    -- '3' → 6
    -- '4' → 8
    -- '5' → 10
    -- Others → 0
    DECLARE cur CURSOR FOR
    SELECT r.response_text,
           CASE r.response_text
               WHEN '1' THEN 2
               WHEN '2' THEN 4
               WHEN '3' THEN 6
               WHEN '4' THEN 8
               WHEN '5' THEN 10
               ELSE 0
           END AS weight
    FROM questions q
    JOIN responses r ON q.question_id = r.question_id
    WHERE q.survey_id = surveyID;
    
    -- Continue handler for cursor end
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Open the cursor to start fetching data
    OPEN cur;
    
    -- Loop through all the responses
    read_loop: LOOP
        -- Fetch the response text and its corresponding weight
        FETCH cur INTO responseText, responseWeight;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Add the weight to the total score
        SET totalScore = totalScore + responseWeight;
    END LOOP;
    
    -- Close the cursor
    CLOSE cur;

    -- Determine the score category based on the total score
    -- 'Good' for score >= 220
    -- 'Neutral' for 100 < score < 220
    -- 'Bad' for score <= 100
    IF totalScore >= 220 THEN
        SET scoreCategory = 'Good';
    ELSEIF totalScore > 100 THEN
        SET scoreCategory = 'Neutral';
    ELSE
        SET scoreCategory = 'Bad';
    END IF;
    
    -- Output the total score and its category
    SELECT totalScore AS SurveyScore, scoreCategory AS ScoreCategory;
END //

DELIMITER ;
